class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.string :name
      t.decimal :salary_annual, precision: 8, scale: 2
      t.decimal :salary_hourly, precision: 8, scale: 2

      t.timestamps
    end
  end
end
