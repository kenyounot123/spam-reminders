class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
  end

  def new
    @reminder = Reminder.new
  end
  def create
  end

  private

  def reminder_params
    params.expect(reminder: [ :body, :due, :spam_interval, :spam_repetitions ])
  end
end
