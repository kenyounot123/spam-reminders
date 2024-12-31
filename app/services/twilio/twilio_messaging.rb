# Use this service to send SMS messages to users.
class Twilio::MessagingService
  def initialize
    @client = Twilio::REST::Client.new
  end

  def send_message(to:, body:)
    @client.messages.create(to: to, from: ENV["TWILIO_PHONE_NUMBER"], body: body)
  end
end
