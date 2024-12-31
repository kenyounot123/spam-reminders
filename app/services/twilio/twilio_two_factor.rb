class Twilio::TwoFactorService
  def initialize
    @client = Twilio::REST::Client.new
  end
end
