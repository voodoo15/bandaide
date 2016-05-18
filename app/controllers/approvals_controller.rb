class ApprovalsController < ApplicationController
  before_action :authenticate_musician!

  def create
    binding.pry
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
  end

  private

  def approval_params
    params.require(:approval).permit(:musician_id, :member_id, :approved)
  end
end
