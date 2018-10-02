class AddUserIdToBudget < ActiveRecord::Migration[5.1]
  def change
    add_column :budgets, :user_id, :integer
  end
end
