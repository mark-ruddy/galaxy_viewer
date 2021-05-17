class PagesController < ApplicationController
  before_action :set_error_msg

  @@planetary = NasaApi::Planetary.new  
  @@mars = NasaApi::Mars.new

  def index
    if params[:date].present?
      @apod = @@planetary.apod(date: params[:date])
    else
      @apod = @@planetary.apod
    end
  end

  def epic
    if params[:date].present?
      @epic = @@planetary.epic(date: params[:date])
    else
      @epic = @@planetary.epic
    end
  end

  def earth
    if params[:lat].present? && params[:lon].present?
      @earth = @@planetary.earth_imagery(lat: params[:lat], lon: params[:lon])
    else
      @earth = @@planetary.earth_imagery(lat: 50, lon: 50)
    end
  end

  def mars
    if params[:sol].present?
      @rover = @@mars.photos(rover: 'curiosity', sol: params[:sol], camera: 'fhaz')
    else
      @rover = @@mars.photos(rover: 'curiousity', sol: 100, camera: 'fhaz')
    end
  end

  private
  def set_error_msg
    @error_msg = "The submitted information was invalid or the demo API key has expired"
  end
end
