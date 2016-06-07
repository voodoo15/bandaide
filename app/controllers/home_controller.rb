class HomeController < ApplicationController

  def index
    @vacant_bands = Band.how_full
    @genres = Genre.all
    @positions = Position.all
    if params[:search] && params[:type] == 'band'
      @bands = Band.joins(:genre).where("LOWER(genres.description) LIKE LOWER (?)", "%#{params[:search]}%")
    else
      @bands = Band.order("RANDOM()").limit(3)
    end

    if params[:search] && params[:type] == 'musician'
      @musicians = Musician.joins(:positions).where("LOWER(positions.description) LIKE LOWER (?)", "%#{params[:search]}%")
    else
      @musicians = Musician.order("RANDOM()").limit(6)
    end

    respond_to do |format|
      format.html do
        if request.xhr?
          render partial: 'home/bands', object: @bands if @bands && params[:type] == 'band'
          render partial: 'home/musicians', object: @musicians if @musicians && params[:type] == 'musician'
        end
      end
    end

    @musician = current_musician
    if current_musician.present?
      @nearby_musicians = @musician.nearbys(2, unit: :km)
    end
  end

end
