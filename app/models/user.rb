class User < ApplicationRecord
  has_many :days
  has_many :locations, through: :days

  # def suggestion
  #
  #   @user.find_by(username: params[:username]).days
  #
  #
  # end


end
