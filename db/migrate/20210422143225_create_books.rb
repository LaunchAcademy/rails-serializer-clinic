class CreateBooks < ActiveRecord::Migration[5.2]
   def change
    create_table :books do |t|
      t.string :title
      t.string :copyright
      t.text :description
      t.string :publication
      t.belongs_to :author
      t.belongs_to :creator

      t.timestamps
    end
  end
end
