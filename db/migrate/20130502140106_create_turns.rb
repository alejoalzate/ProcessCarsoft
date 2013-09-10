class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.string :day
      t.time :start_time
      t.time :finish_time
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end
