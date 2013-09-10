class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :name
      t.boolean :gender
      t.string :identification
      t.string :address_residence
      t.string :phone
      t.string :center_name
      t.string :movil
      t.references :document
      t.references :rh
      t.references :role
      t.references :type_user
      t.references :center
    

      t.timestamps
    end
      add_index :users, :document_id
      add_index :users, :rh_id
      add_index :users, :role_id
      add_index :users, :type_user_id
     
  end

  def self.down
    drop_table :users
  end
end