class ChangeDateNullConstraint < ActiveRecord::Migration[8.0]
  def change
    change_column_null :reminders, :due_date, false
  end
end
