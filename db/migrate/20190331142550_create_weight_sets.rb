class CreateWeightSets < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_sets do |t|
      t.integer :numb_of_sets
      t.references :workout, index: true, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
