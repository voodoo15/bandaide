class MembersController < ApplicationController

  def create
    @band = Band.find(params[:band_id])

    @member_musician= Musician.find(current_musician.id)
    @member = @band.members.build(member_params)

    if @member.save
      redirect_to root_path
    else
      render :new
    end
  end


  def destory

  end

end


private

def member_params

params.require(:member).permit(:musician_id , :band_id , :position_id )

end
