class Api::MessagesController < ApplicationController

  def index
  end

  def create
    if (params[:user_id])
      @chatroom = Chatroom.where("name=?",params["room_name"])
      @cid = @chatroom[0].id
      @id = params["user_id"]
      @message = params["message"]
      Message.create({message:@message, user_id:@id, chatroom_id:@cid})
      @messages = @chatroom[0].messages
      render json: @messages
    else
      @chatroom = Chatroom.where("name=?",params[:name])
      @messages = @chatroom[0].messages
      render json: @messages
    end
  end

  private

end
