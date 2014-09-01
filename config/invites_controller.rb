class InvitesController < InheritedResources::Base

  def approve
    current_user.income_invites.update(state: "approved")
    redirect_to user_page_path(current_user)
  end

  def reject
    current_user.income_invites.update(state: "rejected")
    redirect_to user_page_path(current_user)
  end

end