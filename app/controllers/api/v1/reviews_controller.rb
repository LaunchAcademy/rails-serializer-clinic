class Api::V1::ReviewsController < ApplicationController
  def show
    random_data = "foobar"
    render json: Review.find(params[:id]), scope: { current_user: current_user, random_data: random_data }
  end
end
