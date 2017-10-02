class Api::V1::UsersController < ApplicationController
  def create
    @user = User.find_or_create_by(username: params[:user_params])
    @days = User.days
    @location = Location.find_or_create_by(latitude: params[:latitude], longitude: params[:longitude])
    

  end
end
