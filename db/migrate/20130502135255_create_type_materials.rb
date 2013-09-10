class CreateTypeMaterials < ActiveRecord::Migration
  def change
    create_table :type_materials do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
