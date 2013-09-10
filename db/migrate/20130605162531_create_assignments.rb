class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.references :user
      t.references :role

      t.timestamps
    end
  end
end
