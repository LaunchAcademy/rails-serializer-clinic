class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all


    # serializing arrays MANUALLY
    # Alternatives (careful, this works but might lead you astray)
    # render json: {
    #   books: ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer, scope: current_user),
    #   reviews: ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer, scope: current_user)
    # }
  end

  def show
    # shuts off serializer
    # render json: Book.find(params[:id]), adapter: nil


    render json: Book.find(params[:id]), serializer: BookShowSerializer

    # if you need to get more than the current user, you'll need to pass both the special data and current user in as scope
    # random_data = "something important probably"
    # render json: Book.find(params[:id]), serializer: BookShowSerializer, scope: { random_data: random_data, current_user: current_user }

  end
end
