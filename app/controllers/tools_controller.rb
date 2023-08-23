class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_tool, only: %i[show edit update destroy]

  def new
  end

  def create
    @tool = Tool.new(tool_params)

    respond_to do |format|
      if @tool.save
        format.html { redirect_to tool_path(@tool), notice: "Tool was successfully created." }
        format.json
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json
      end
    end
  end

  def show
  end

  def index
    @tools = Tool.all
    @tool = Tool.new
  end

  def update
    if @tool.update(tool_params)
      redirect_to @tool, notice: "Tool was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end



  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description, :image, :size, :category, :price, :availability)
  end
end
