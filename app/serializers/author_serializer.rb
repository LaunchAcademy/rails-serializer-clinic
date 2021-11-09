class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :full_name

  def full_name
    # binding.pry
    "#{object.first_name} #{object.last_name}"
    # "#{object.last_name}, #{object.first_name}"
  end
end