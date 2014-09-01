class JamsController < InheritedResources::Base

  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  def new
    @jam = current_user.own_jams.new
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

end