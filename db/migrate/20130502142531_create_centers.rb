class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :name
      t.string :code
      t.references :area_center

      t.timestamps
    end
    add_index :centers, :area_center_id
  end
end
