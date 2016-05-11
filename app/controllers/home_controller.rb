class HomeController < ApplicationController
  def index
    @musicians = Musician.all
    @bands = Band.all
  end
end
