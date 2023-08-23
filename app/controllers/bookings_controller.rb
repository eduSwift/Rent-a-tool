class BookingsController < ApplicationController
  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @tool = Tool.find(params[:tool_id])
    @booking.tool = @tool
    @booking.user = @user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to new_tool_booking(@tool), notice: "Booking was successfully created." }
        format.json
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json
      end
    end
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
  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
