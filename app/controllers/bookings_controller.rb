class BookingsController < ApplicationController
  def new
    @booking = Tool.new
  end

  def create
  end

  def show
    @bookings.all
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = Tool.find(@booking.tool.id)
    @booking.destroy

    redirect_to
  end
end
