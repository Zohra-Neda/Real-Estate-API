class AddHouseRefToAgent < ActiveRecord::Migration[7.0]
  def change
    add_reference :houses, :agent, foreign_key: true
  end
end
