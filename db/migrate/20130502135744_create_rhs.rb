class CreateRhs < ActiveRecord::Migration
  def change
    create_table :rhs do |t|
      t.string :name

      t.timestamps
    end
  end
end
