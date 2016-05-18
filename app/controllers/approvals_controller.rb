class ApprovalsController < ApplicationController
  before_action :authenticate_musician!

  def create
    @musician = current_musician
    @member = Member.find(params[:id])
  end

  def update
  end

  private

  def approval_params
    params.require(:approval).permit(:musician_id, :member_id, :approved)
  end
end
