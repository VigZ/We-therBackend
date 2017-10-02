class Api::V1::LoginController < ApplicationController
  def create
    @user = User.find_or_create_by(username: params[:user_params])
    @days = User.days
    @location = Location.find_or_create_by(latitude: params[:latitude], longitude: params[:longitude])
    @session = {
      "user" => @user.to_json,
      "days" => @days.to_json,
      "location" => @location.to_json
    }

    render json: @session, status: 200

  end
end
