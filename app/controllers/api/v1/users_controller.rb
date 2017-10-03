class Api::V1::UsersController < ApplicationController

  def create
    @user = User.find_or_create_by(username: params[:username])
    render json: @user

  end

  private

  def user_params
    params.permit(:body)

  end

end
