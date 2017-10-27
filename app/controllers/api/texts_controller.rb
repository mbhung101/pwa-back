require 'twilio-ruby'

    class Api::TextsController < ApplicationController
      def create
        account_sid = 'AC14aa1a7fce2fd4f7ef91d392b45f503f'
        auth_token  = '24c0445b38b2035e7e8df4911dcbc338'
        @client = Twilio::REST::Client.new(account_sid, auth_token)
        @user = User.where("name=?",params["recipient"])
        if (@user.online === false)
        message = @client.messages.create(
        :body => params["message"],
        :to   =>  @user[0].phone,
        :from => '+15005550006')
        end
      end



end
