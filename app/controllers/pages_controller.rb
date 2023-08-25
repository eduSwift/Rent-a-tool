class PagesController < ApplicationController

  def home
    @user = current_user
    @tools = current_user.tools
    @tool = Tool.new
    @bookings = current_user.bookings
    @booking = Booking.new
    if params[:tool]
      @tool_id = params[:tool]
      @select_tool = Tool.find(@tool_id)
      @filter_booking = @select_tool.user.bookings.where(tool_id: @select_tool.id)[0]
      @select_booking = Booking.find(@filter_booking.id)
    else
      nil
    end
  end
end
