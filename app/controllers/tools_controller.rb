class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def show
    @tool = Tool.find(params[:id])
  end

  def index
    @tools = Tool.all
  end

  

end
