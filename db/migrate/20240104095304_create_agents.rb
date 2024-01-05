class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :image
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
