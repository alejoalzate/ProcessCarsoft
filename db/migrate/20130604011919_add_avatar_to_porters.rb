class AddAvatarToPorters < ActiveRecord::Migration
  def self.up
	add_column :porters, :avatar_file_name, :string
	add_column :porters, :avatar_content_type, :string
	add_column :porters, :avatar_file_size, :integer
	add_column :porters, :avatar_updated_at, :datetime
  end

  def self.down
	remove_column :porters, :avatar_file_size
	remove_column :porters, :avatar_content_type
	remove_column :porters, :avatar_file_name
	remove_column :porters, :avatar_updated_at
  end
end
