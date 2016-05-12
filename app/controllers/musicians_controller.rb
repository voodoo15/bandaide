class MusiciansController < ApplicationController
  def show
    @musician = Musician.find(params[:id])
  end
end
