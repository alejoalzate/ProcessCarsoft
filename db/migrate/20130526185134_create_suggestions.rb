class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name
      t.string :surname
      t.string :number_identification
      t.string :phone
      t.string :movil
      t.text :suggestion
      t.references :document
      t.references :user

      t.timestamps
    end
    add_index :suggestions, :document_id
    add_index :suggestions, :user_id
  end
end
