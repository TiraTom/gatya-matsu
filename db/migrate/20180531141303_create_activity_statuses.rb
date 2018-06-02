class CreateActivityStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_statuses do |t|
      t.boolean :accepted_flag
      t.text :review
      t.text :memo
      t.date :act_date
      t.date :flag_date

      t.timestamps
    end
  end
end
