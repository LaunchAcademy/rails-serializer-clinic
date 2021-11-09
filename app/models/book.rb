class Book < ApplicationRecord
  belongs_to :author
  belongs_to :creator, class_name: :User, foreign_key: :creator_id

  has_many :reviews

  def author_name
    "#{author.first_name} #{author.last_name}"
  end
end