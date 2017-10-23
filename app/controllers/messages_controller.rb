# class MessagesController < ApplicationController
#  skip_before_filter :verify_authenticity_token
#
#   def reply
#     message_body = params["Body"]
#     from_number = params["From"]
#     boot_twilio
#     sms = @client.messages.create(
#       from: Rails.application.secrets.twilio_number,
#       to: from_number,
#       body: "Hello there, thanks for texting me. Your number is #{from_number}."
#     )
#
#   end
#
#   private
#
#   def boot_twilio
#     account_sid = Rails.application.secrets.twilio_sid
#     auth_token = Rails.application.secrets.twilio_token
#     @client = Twilio::REST::Client.new account_sid, auth_token
#   end
# end

class MessageSender
  def self.send_message(message)
    msg = send_message(message)
  end

  def initialize
    # To find TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN visit
    # https://www.twilio.com/user/account
    account_sid = 'AC14aa1a7fce2fd4f7ef91d392b45f503f'
    auth_token  = '24c0445b38b2035e7e8df4911dcbc338'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
    :body => 'All in the game, yo',
    :to   => '+14108675309',
    :from => '+15005550006')
    debugger
  end

  # def send_message(message)
  #   @client.messages.create(
  #     from:  '+15005550006',
  #     to:    '+15166431834',
  #     body:  'poop'
  #   )
  # end

end
