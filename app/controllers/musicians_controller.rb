class MusiciansController < ApplicationController
  def show
    @musician = Musician.find(current_musician)
  end
end
