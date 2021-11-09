class ReviewSerializer < ActiveModel::Serializer
  attributes :id

  # belongs_to :user, if: :current_user?
  belongs_to :user
  
  # binding.pry

  def current_user?
    # binding.pry
    scope[:current_user] == object.user
  end
end