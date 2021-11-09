class Api::V1::BooksController < ApplicationController
  def index
    # 1 Preferred
    render json: Book.all

    # 3 Use as a last resort, serializing deeper than 2 levels (Book & Reviews)
    # i.e. querying for Books and want to serialize the Books, serialize all their Reviews, and serialize each User that created the Review
    render json: {
      books: ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer, scope: {current_user: current_user}),
      reviews: ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer, scope: {current_user: current_user})
    }
  end

  def show
    # 2 Handle specific serializer
    render json: Book.find(params[:id]), serializer: BookShowSerializer
    # render json: Book.find(params[:id])
  end
end

























# Alternatives (careful, this works but might lead you astray)
# render json: {
#   books: ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer, scope: current_user),
#   reviews: ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer, scope: current_user)
# }