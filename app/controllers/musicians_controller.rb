class MusiciansController < ApplicationController
  def show
    @musician = Musician.find(current_musician)
    @nearby_musicians = @musician.nearbys(5, unit: :km)
  end
end
