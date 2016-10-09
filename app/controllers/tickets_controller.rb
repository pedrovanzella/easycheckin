class TicketsController < ApplicationController
  before_action :set_ticket, only: [:update]
  def index
    @tickets = Ticket.where(user: current_user)
  end

  def update
    if @ticket.update(allowed_params)
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def allowed_params
    params.require(:ticket).permit(:checked_in)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
