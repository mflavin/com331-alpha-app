class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :day_of_week
      t.timestamps
    end
  end
end
