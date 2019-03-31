class CreateWeightReps < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_reps do |t|
      t.integer :numb_of_reps
      t.integer :amount_of_weight
      t.references :weight_set, index: true, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
