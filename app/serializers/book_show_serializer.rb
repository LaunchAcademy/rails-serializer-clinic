class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :publication

  has_many :reviews
end