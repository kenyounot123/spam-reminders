class CreateReminders < ActiveRecord::Migration[8.0]
  def change
    create_table :reminders do |t|
      t.string :body
      t.datetime :due
      t.time :spam_interval
      t.integer :spam_repetitions

      t.timestamps
    end
  end
end
