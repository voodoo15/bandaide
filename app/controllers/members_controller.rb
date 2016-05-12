class MembersController < ApplicationController

  def new
    @member = Member.new
    @band= Band.find(params[:band_id])
    @positions = Position.all
  end

  def create
    @band = Band.find(params[:band_id])
    @musician=current_musician
    @positions = Position.all
    @member =@band.members.build(member_params)

      if @member.save
        redirect_to bands_path
      else
        render :new
      end
  end


  def destory

  end

end


private

def member_params

params.require(:member).permit(:musician_id, :band_id, :position_id)

end
