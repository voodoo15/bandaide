class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band= Band.find(params[:id])
  end

  def new
    @band = Band.new
    @genre = Genre.all
    @positions= Position.all
  end

  def create
    @musician = Musician.find(current_musician.id)

    @band = @musician.owned_bands.build(band_params)
    if @band.save
      redirect_to bands_url
    else
      render "new"
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
    params.require(:band).permit(:name, :description, :genre_id, :musician_id, :member_id, :position_id)
  end

end
