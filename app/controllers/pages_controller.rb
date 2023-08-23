class PagesController < ApplicationController

  def home
    @user = current_user
    @tools = current_user.tools
    @tool = Tool.new
    @bookings = current_user.bookings
    @booking = Booking.new
  end
end
