class AddHouseRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :houses, foreign_key: true
  end
end
