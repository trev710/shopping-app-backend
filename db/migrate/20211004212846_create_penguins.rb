class CreatePenguins < ActiveRecord::Migration[6.1]
  def change
    create_table :penguins do |t|
      t.string :name
      t.string :origin
      t.integer :price
      t.string :cateogry
      t.string :bio
      t.string :image_url
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
