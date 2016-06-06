class SearchController < ApplicationController
  before_action :authenticate_musician!

  def index
    @musician = Musician.find(current_musician[:id])
    @nearby_musicians = @musician.nearbys(5, unit: :km)

    if @nearby_musicians == nil
      @nearby_musicians = Musician.near(@musician.city, 50)
    end

    @nearby_bands = Band.near(@musician)

    # gon.nearby_musicians = @nearby_musicians.collect{ |r| [r.id, r.firstname,  r.latitude, r.longitude, r.positions.where(skills: {mainskill: true}).first.description, "musicians", r.avatar.thumb.url]}
    gon.nearby_musicians = @nearby_musicians.collect{ |r| [r.id, r.firstname,  r.latitude, r.longitude, r.positions.where(skills: {mainskill: true}).first.description, "musicians", r.avatar.thumb.url]} +
                           @nearby_bands.collect{ |b| [b.id, b.name, b.latitude, b.longitude, b.genre.description, "bands", b.poster.thumb.url]}
    @positions=Position.all
    @genres= Genre.all
  end
end
