class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :area, null:false
      t.text :image, null:false
      t.integer :area_id, null:false
      t.timestamps
    end
    add_index :locations, :area
  end
end
