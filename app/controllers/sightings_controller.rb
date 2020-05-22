class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:birds, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end

  def index 
    sightings = Sighting.all 
    render json: SightingSerializer.new(sightings)
  end
end
