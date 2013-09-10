class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.string :code
      t.references :user

      t.timestamps
    end
    add_index :programs, :user_id
  
  end
end
