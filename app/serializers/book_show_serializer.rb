class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_name, :publication, :copyright, :current_user

  has_many :reviews

  # def random_data
  #   # binding.pry
  #   scope[:random_data]
  # end 

  # def current_user 
  #   scope[:current_user]
  # end

# Two special attributes available in the methods we create 
# - object 
# - scope
end
