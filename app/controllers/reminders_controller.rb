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
        format.turbo_stream
      end
    else
      respond_to do |format|
        render :new, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def reminder_params
      params.expect(reminder: [ :body, :due_date, :due_time, :spam_interval, :spam_repetitions ])
    end
end
