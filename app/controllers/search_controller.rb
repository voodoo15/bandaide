class SearchController < ApplicationController
  before_action :authenticate_musician!

  def index
    @musician = Musician.find(current_musician[:id])
    @nearby_musicians = @musician.nearbys(5, unit: :km)
    gon.nearby_musicians = @nearby_musicians.collect{ |r| [r.id, r.firstname,  r.latitude, r.longitude, r.positions.where(skills: {mainskill: true}).first.description] }
    gon.type = "musicians"
    @positions=Position.all
    @genres= Genre.all
    # @musician_fields = Musician.all.map{|m| [m.id,m.positions.description]}
  end
end
