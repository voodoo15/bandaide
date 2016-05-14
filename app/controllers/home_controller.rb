class HomeController < ApplicationController
  def index
    @musicians = Musician.all
    @genres = Genre.all

    @bands = if params[:search]
      Band.joins(:genre).where("LOWER(genres.description) LIKE LOWER (?)", "%#{params[:search]}%")
    else
      @bands = Band.all
    end
  end
end
