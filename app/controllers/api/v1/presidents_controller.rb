class Api::V1::PresidentsController < ApplicationController
  def index
    @presidents = President.all
    render json: @presidents
  end

  def show
    @president = President.find(params[:id])
    render json: @president
  end
end
