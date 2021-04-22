class Api::V1::ReviewsController < ApplicationController
  def show
    render json: Review.find(params[:id]), scope: current_user
  end
end
