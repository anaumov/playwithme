class InvitesController < InheritedResources::Base

  def accept
    invite = Invite.find(params[:invite_id])
    invite.accept
    redirect_to my_path
  end

   def reject
    invite = Invite.find(params[:invite_id])
    invite.reject
    redirect_to my_path
   end

  private

    def permitted_params
      params.permit!
    end

end