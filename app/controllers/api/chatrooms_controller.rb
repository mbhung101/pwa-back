class Api::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.where(:created_at)
    render json: @chatrooms
  end

  def create
    @user = User.where("id = ?",params[:user_id])
    @chatrooms = @user[0].chatrooms
    render json: @chatrooms
  end

  private

  def chatroomParams
    params.require(:chatroom).permit(:name,:chatroom_id,:user_id)
  end

end
