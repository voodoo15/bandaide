class ApprovalsController < ApplicationController
  before_action :authenticate_musician!

  def create
    @musician = current_musician
    @member = Member.find(params[:member_id])
    @approval = Approval.new(approval_params)

    if @approval.save
      redirect_to root_url, notice: "Thanks for applying to the band"
    else
      render band_url(band_id)
    end
  end

  def update
    @band = Band.find(params[:band_id])
    @member = Member.find(params[:member_id])
    @approval = Approval.find(params[:id])

    if @approval.update_attributes(approval_params)
      @member.update_attributes(member_params)
      @member.save

      redirect_to band_url(@band)
    else
      redirect_to band_url(@band)
    end
  end

  private

  def approval_params
    params.require(:approval).permit(:musician_id, :member_id, :approved)
  end

  def member_params
    params.require(:member).permit(:musician_id)
  end
end
