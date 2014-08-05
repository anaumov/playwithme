class RoomsController < InheritedResources::Base

private
  def permitted_params
    params.permit!
  end
end
