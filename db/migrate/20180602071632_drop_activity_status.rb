class DropActivityStatus < ActiveRecord::Migration[5.1]
  def change
    drop_table :activity_statuses
  end
end
