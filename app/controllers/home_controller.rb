class HomeController < ApplicationController
  def index
    @musicians = Musician.all
    @bands = Band.all
    @genres = Genre.all
  end
end
