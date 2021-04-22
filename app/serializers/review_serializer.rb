class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :rating, :random_data

  belongs_to :user, if: :current_user?

  def random_data 
    # binding.pry
    scope[:random_data]
  end

  def current_user?
    current_user == object.user
  end
end


# Two special attributes available in the methods we create 
# - object 
# - scope