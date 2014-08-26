class UsersController < InheritedResources::Base

  def show
    @user = User.friendly.find(params[:id])
  end

end
