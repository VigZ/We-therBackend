class Api::V1::LocationsController < ApplicationController
  def create
    @location = Location.find_or_create_by(latitude: params[:latitude], longitude: params[:longitude])
    render json: @location
  end
end
