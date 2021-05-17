class PagesController < ApplicationController
  def index
    planetary = NasaApi::Planetary.new  
  end

  def earth
  end

  def mars
  end
end
