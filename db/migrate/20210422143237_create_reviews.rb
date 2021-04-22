class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :body 
      t.belongs_to :book, null: false
      t.belongs_to :user, null: false
      
      t.timestamps
    end
  end
end
