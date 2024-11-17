class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
  end

  def new
    @reminder = Reminder.new
  end
  def create
    @reminder = Reminder.new(reminder_params)
    if @reminder.save
      respond_to do |format|
        format.turbo_stream { }
      end
    else
      respond_to do |format|
        render :new, status: :unprocessable_entity
      end
    end
  end

  private

  def reminder_params
    params.expect(reminder: [ :body, :due_date, :spam_interval, :spam_repetitions ])
  end
end
