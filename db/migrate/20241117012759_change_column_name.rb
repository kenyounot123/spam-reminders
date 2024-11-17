class ChangeColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column :reminders, :due, :due_date
  end
end
