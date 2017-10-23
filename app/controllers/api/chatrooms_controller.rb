class Api::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.order(:created_at)
    render json: @chatrooms
  end

  def create
    debugger
    @chatroom = Chatroom.create(nr)
    render json:@chatroom
  end

  private
  def chatroomParams
    params.require(:chatroom).permit(:name,:chatroom_id,:user_id)
  end

end
