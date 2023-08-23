class BookingsController < ApplicationController
  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Tool.new
  end

  def create
    @booking = Booking.new(tool_params)
    @tool = Tool.find(params[:tool_id])

    respond_to do |format|
      if @booking.save
        format.html { redirect_to new_tool_booking(@tool), notice: "Tool was successfully created." }
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
end
