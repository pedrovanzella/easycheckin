class SeatsController < ApplicationController
  before_action :set_seat, only: [:update]

  def update
    # create ticket
  end

  private

  def allowed_params
    params.require(:seat).allow(:purchase)
  end

  def set_seat
    @seat = Seat.find(params[:id])
  end
end
