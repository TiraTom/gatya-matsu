class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :target_year
      t.integer :budget
      t.integer :use
      t.text :memo

      t.timestamps
    end
  end
end
