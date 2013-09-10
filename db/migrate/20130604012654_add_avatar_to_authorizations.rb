class AddAvatarToAuthorizations < ActiveRecord::Migration
 	def self.up
	add_column :authorizations, :avatar_file_name, :string
	add_column :authorizations, :avatar_content_type, :string
	add_column :authorizations, :avatar_file_size, :integer
	add_column :authorizations, :avatar_updated_at, :datetime
	end

	def self.down
	remove_column :authorizations, :avatar_file_size
	remove_column :authorizations, :avatar_content_type
	remove_column :authorizations, :avatar_file_name
	remove_column :authorizations, :avatar_updated_at
	end
end
