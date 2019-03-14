class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.string :workout
      t.integer :amount_of_weight
      t.references :day, index: true, foreign_key: true
      t.timestamps
    end
  end
end
