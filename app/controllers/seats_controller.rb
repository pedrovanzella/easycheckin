class SeatsController < ApplicationController
  before_action :set_seat, only: [:update, :show]

  def update
    if Ticket.create(user: current_user, flight: @seat.flight, seat: @seat)
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    if Ticket.create(user: current_user, flight: @seat.flight, seat: @seat)
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def allowed_params
    params.require(:seat).allow(:purchase)
  end

  def set_seat
    @seat = Seat.find(params[:id])
  end
end
