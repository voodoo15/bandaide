class MusiciansController < ApplicationController
  before_action :authenticate_musician!, except: [:show]

  def show
    @musician = Musician.find(params[:id])
    @nearby_musicians = @musician.nearbys(5, unit: :km)
    @positions = Position.all
    @skill = Skill.new
    gon.nearby_musicians = @nearby_musicians.collect{ |r| [r.latitude, r.longitude] }
  end

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
