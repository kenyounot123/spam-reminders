class AddDueTimeColumn < ActiveRecord::Migration[8.0]
  def change
    add_column :reminders, :due_time, :time, null: false
  end
end
