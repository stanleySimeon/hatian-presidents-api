class Api::V1::PresidentsController < ApplicationController
  ##
  # The index function is a controller function that renders a JSON object of all the presidents in the database
  def index
    @presidents = President.all
    render json: @presidents
  end

  ##
  # The function show is defined, and it takes in a parameter called params. The function then finds the president with
  # the id that is equal to the id in the params. The function then renders the president as json
  def show
    @president = President.find(params[:id])
    render json: @president
  end
end
