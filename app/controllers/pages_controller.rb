class PagesController < ApplicationController

  def home
    @user = current_user
    @tools = current_user.tools
    @tool = Tool.new
    @bookings = current_user.bookings
  end
end
