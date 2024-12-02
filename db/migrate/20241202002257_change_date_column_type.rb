class ChangeDateColumnType < ActiveRecord::Migration[8.0]
  def change
    change_column :reminders, :due_date, :date, null: false
  end
end
