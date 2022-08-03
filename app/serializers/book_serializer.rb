class BookSerializer < ActiveModel::Serializer
  attributes(:id, :title, :author_name)

  # def random_thing 
  #   return "bananas are sort of weird when you think about it"
  # end
end
