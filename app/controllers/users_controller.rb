class UsersController < InheritedResources::Base

  def show
    @user = User.find_by_login(params[:login])
  end

end
