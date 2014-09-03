class ProfileController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
  end

  def settings
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(permitted_params[:user])
      redirect_to my_path
    else
      render :settings
    end
  end

  private

    def permitted_params
      params.permit!
    end

end