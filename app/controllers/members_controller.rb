class MembersController < ApplicationController

  def create
    @band = Band.find(params[:band_id])
  
    @member_user= current_user
    @member = @band.members.build(member_params)
  end


  def destory

  end

end


private

def member_params

params.require(:member).permit(:musician_id , :band_id , :position_id )

end
