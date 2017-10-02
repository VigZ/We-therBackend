class Api::V1::DaysController < ApplicationController
  def create
    Day.create(:day_params)
  end
end
