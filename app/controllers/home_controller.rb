class HomeController < ApplicationController

  def index
    @musicians = Musician.all
    @genres = Genre.all

    @bands = if params[:search]
      Band.joins(:genre).where("LOWER(genres.description) LIKE LOWER (?)", "%#{params[:search]}%")
    else
      @bands = Band.all
    end

    respond_to do |format|
      format.html do
        if request.xhr?
          render partial: 'home/bands', object: @bands
        end
      end
    end

    @musician = current_musician
    if current_musician.present?
      @nearby_musicians = @musician.nearbys(2, unit: :km)
    end
  end
  
end
