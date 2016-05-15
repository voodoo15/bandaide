class MembersController < ApplicationController
before_action :authenticate_musician! 

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
        redirect_to band_path(@band)
      else
        render :new
      end
  end


  def destroy
    @band= Band.find(params[:band_id])
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to band_path(@band)
  end




private

  def member_params

    params.require(:member).permit(:musician_id, :band_id, :position_id)

  end
end
