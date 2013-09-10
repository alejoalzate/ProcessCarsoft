class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :serial
      t.boolean :accessory
      t.string :color
      t.references :type_material
      t.references :porter
      t.references :user

      t.timestamps
    end
    add_index :teams, :type_material_id
    add_index :teams, :porter_id
    add_index :teams, :user_id
  end
end
