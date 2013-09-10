class CreateModifyUsers < ActiveRecord::Migration
  def change
    create_table :modify_users do |t|
      t.string :change
      t.references :user
      t.string :description

      t.timestamps
    end
    add_index :modify_users, :user_id
  end
end
