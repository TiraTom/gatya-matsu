class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.integer :activity_level
      t.integer :activity_price
      t.float :activity_time

      t.timestamps
    end
  end
end
