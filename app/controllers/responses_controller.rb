class ResponsesController < ApplicationController
  def index
    @current_response = Response.first
    @current_options = Option.where(response_id: @current_response.id)
  end

  def show
    @current_response = Response.find(get_next_id)
    @current_options = Option.where(response_id: @current_response.id)
  end

  private
  def get_next_id
    Option.find(params[:id]).next_response_id
  end
end
