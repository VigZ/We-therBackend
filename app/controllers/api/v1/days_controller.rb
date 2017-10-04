class Api::V1::DaysController < ApplicationController

  def create


    @day = Day.create(
    user_id: User.find_by(username: params[:username]).id,
    location_id: Location.find_by(longitude: params[:longitude]).id,
    date: params[:date],
    high: params[:high],
    low: params[:low],
    precipitation: params[:precipitation],
    wind: params[:wind],
    current: params[:current],
    pop: params[:pop],
    pref: params[:pref])



    render json: @day
  end

  private

  def day_params
    params.permit(:body)

  end

end
