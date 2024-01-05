class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :house_type
      t.string :name
      t.text :description
      t.string :image
      t.string :image_lg
      t.string :country
      t.string :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :surface
      t.string :year
      t.integer :price

      t.timestamps
    end
  end
end
