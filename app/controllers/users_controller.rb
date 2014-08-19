class UsersController < InheritedResources::Base

  def confirm_account
    render 'devise/mailer/confirmation_instructions'
  end

end
