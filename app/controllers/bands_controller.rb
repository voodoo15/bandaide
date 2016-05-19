class BandsController < ApplicationController
  before_action :authenticate_musician!, :except => [:show, :index]

  def index
    @bands = Band.all
  end

  def show
    @band= Band.find(params[:id])
    @musician = Musician.find(@band.leader.id)
    @member = Member.new
    @positions = Position.all
    @nearby_musicians = @musician.nearbys(5, unit: :km)
    gon.nearby_musicians = @nearby_musicians.collect{ |r| [r.id, r.firstname, r.lastname, r.latitude, r.longitude] }
  end

  def new
    @band = Band.new
    @genres = Genre.all
    @positions = Position.all
  end

  def create
    @musician = Musician.find(current_musician.id)
    @genres = Genre.all
    @positions= Position.all
    @band = @musician.owned_bands.build(band_params)
    if @band.save
      redirect_to new_band_member_path(@band)
    else
      render :new
    end
  end

  def edit
    @band= Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])

    if @band.update_attributes(band_params)
      redirect_to band_path(@band)
    else
      render :edit
    end
  end

  private

  def band_params
    params.require(:band).permit(:name, :description, :genre_id, :musician_id,
                            members_attributes: [:band_id, :position_id, :musician_id ] )
  end

end
