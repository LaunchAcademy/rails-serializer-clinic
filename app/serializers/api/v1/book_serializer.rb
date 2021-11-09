class Api::V1::BookSerializer < ActiveModel::Serializer
  attributes :id, :title
  # attributes :id, :title, :description
  
  # binding.pry
  
  has_many :reviews
end