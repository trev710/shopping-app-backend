class CreatePenguins < ActiveRecord::Migration[6.1]
  def change
    create_table :penguins do |t|
      t.string :name
      t.string :origin
      t.integer :price
      t.string :bio
      t.string :shelter
      t.string :image_url
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
