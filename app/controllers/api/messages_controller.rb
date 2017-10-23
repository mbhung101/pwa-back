class Api::MessagesController < ApplicationController
    def self.send_message(message)
      msg = send_message(message)
      debugger
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
end
