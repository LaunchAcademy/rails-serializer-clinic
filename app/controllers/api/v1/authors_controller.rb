class Api::V1::AuthorsController < ApplicationController
  def show
    render json: Author.find(params[:id])
  end
end
