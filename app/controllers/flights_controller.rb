class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :update]

  def index
    @flights = Flight.all
  end

  def update
    if @flight.update(allowed_params)
      redirect_back(fallback_location: root_path)
    end
  end

  def show
  end

  private

  def allowed_params
    params.require(:flight)
  end

  def set_flight
    @flight = Flight.find(params[:id])
  end
end
