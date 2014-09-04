class JamsController < InheritedResources::Base

  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_filter :find_jam , only: [:show, :edit, :update, :destroy]

  def new
    @jam = current_user.own_jams.new
  end

  def show
    @unaccepted_invite = current_user.unaccepted_invite_for(@jam)
    super
  end

  def edit
    authorize_action_for(@jam)
  end

  def update
    authorize_action_for(@jam)
    if @jam.update_attributes(permitted_params[:jam])
      redirect_to jams_path
    else
      render :edit
    end
  end

  def destroy
    authorize_action_for(@jam)
    @jam.destroy
    redirect_to jams_path
  end

  def invite
    params[:receivers_ids].each do |receiver_id|
      current_user.outcome_invites.create(jam_id: params[:jam_id], receiver_id: receiver_id)
    end

    redirect_to jam_path(params[:jam_id])
  end

  private

    def permitted_params
      params.permit!
    end

    def find_jam
      @jam = Jam.find(params[:id])
    end

end