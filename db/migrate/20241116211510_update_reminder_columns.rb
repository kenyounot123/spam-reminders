class UpdateReminderColumns < ActiveRecord::Migration[8.0]
  def change
    change_column :reminders, :spam_interval, :integer
    change_column_null :reminders, :body, false
    change_column_null :reminders, :due, false
    change_column_null :reminders, :spam_interval, false
    change_column_null :reminders, :spam_repetitions, false
  end
end
