class HomeController < ApplicationController
  def index
    @musicians = Musician.all
    @bands = Band.all
    @genres = Genre.all
    @musician = current_musician
    if current_musician.present?
      @nearby_musicians = @musician.nearbys(2, unit: :km)
    end
  end
end
