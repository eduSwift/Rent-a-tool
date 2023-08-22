class PagesController < ApplicationController

  def home
    @user = current_user
    @tools = Tool.all
    @tool = Tool.new

  end
end
