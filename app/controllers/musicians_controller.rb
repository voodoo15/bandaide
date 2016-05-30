class MusiciansController < ApplicationController
  before_action :authenticate_musician!, except: [:show]

  def show
    @musician = Musician.find(params[:id])

    @nearby_bands = Band.near(@musician,30, unit: :km)
    gon.nearby_musicians = @nearby_bands.collect{ |r| [r.id, r.name, r.latitude, r.longitude , r.genre.description] }
    gon.type= "bands"
    @positions = Position.all
    @skill = Skill.new
  end

#
  def edit
    @musician = Musician.find(params[:id])
    @positions = Position.all
  end

  def update
    @musician = Musician.find(params[:id])
    @positions = Position.all
    if @musician.update_attributes(musician_params)
      redirect_to musician_path(@musician)
    else
      render :edit
    end
  end

  private
  def musician_params
    params.require(:musician).permit(:address, :city, :address, :postalcode, :position_ids => [])
  end

end
