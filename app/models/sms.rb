class Sms
  ACCOUNT_SID = 'AC4612e1fad2de3256dbbce6129c792ab8'
  AUTH_TOKEN = '428f395bb0fad89748ac6b7ced853a76'

  def self.send_sms(phone_num, message)
    # set up a client to talk to the Twilio REST API
    client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

    client.account.messages.create(
      from: '+12019498352',
      to: phone_num,
      body: message
    )
  end
end
