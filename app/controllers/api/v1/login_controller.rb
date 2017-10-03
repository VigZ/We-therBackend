class Api::V1::LoginController < ApplicationController

  def create

    @user = User.find_or_create_by(username: params[:username])

    @days = @user.days
    @location = Location.find_or_create_by(latitude: params[:latitude], longitude: params[:longitude])
    @session = {
      "user" => @user,
      "days" => @days,
      "location" => @location
    }
    # .to_json

    render json: @session, status: 200

  end
end
