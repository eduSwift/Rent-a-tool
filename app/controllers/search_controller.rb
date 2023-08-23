class SearchController < ApplicationController
  def index
    @q = Tool.ransack(params[:q])
    @tools = @q.result
  end-
end
