class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_name, :publication, :copyright

  has_many :reviews
end
