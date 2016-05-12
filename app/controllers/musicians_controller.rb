class MusiciansController < ApplicationController
  def show
    @musician = Musician.find(params[:id])
    @nearby_musicians = @musician.nearbys(5, unit: :km)
  end
end
