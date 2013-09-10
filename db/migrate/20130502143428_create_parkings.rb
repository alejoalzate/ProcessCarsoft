class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :space_avaible
      t.string :location
      t.references :area
      t.references :vehicle
      t.string :description

      t.timestamps
    end
    add_index :parkings, :area_id
    add_index :parkings, :vehicle_id
  end
end
