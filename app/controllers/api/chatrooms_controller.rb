class Api::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.where(:created_at)
    render json: @chatrooms
  end

  def create
    debugger
    @chatrooms = Chatroom.where("user_id = ?",params[:name])
  end

  private

  def chatroomParams
    params.require(:chatroom).permit(:name,:chatroom_id,:user_id)
  end

end
