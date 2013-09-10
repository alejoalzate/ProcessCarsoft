class CreateAreaCenters < ActiveRecord::Migration
  def change
    create_table :area_centers do |t|
      t.string :name
      t.string :extension
      t.references :responsible
      t.string :phone
      t.string :specification

      t.timestamps
    end
    add_index :area_centers, :responsible_id
  end
end
