class JamsController < InheritedResources::Base

  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  def new
    @jam = current_user.own_jams.new
  end

private
  def permitted_params
    params.permit!
  end

end