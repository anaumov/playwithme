class InvitesController < InheritedResources::Base

  def accept
    invite = Invite.find(params[:invite_id])
    invite.accept
    redirect_to user_page(current_user)
  end

   def reject
    invite = Invite.find(params[:invite_id])
    invite.reject
    redirect_to user_page(current_user)
   end

  private

    def permitted_params
      params.permit!
    end

end