class Api::MessagesController < ApplicationController

  def index
  end

  def create
    debugger
    @chatroom = Chatroom.where("name=?",params[:name])
    @messages = @chatroom[0].messages
    render json: @messages
  end

  private

end
