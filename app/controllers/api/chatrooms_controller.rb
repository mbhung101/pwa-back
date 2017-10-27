class Api::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.where(:created_at)
    render json: @chatrooms
  end

  def create
    if params["room_name"]
      @user1 = User.where("id = ?",params["user_id"])
      @user2 = User.where("name=?",params['patient_name'])
      @patientName = params["patient_name"]
      @phone= params["phone"]
      @dob = params["dob"]
      @message = params["message"]
      @room_name = params["room_name"]
        @newUser = User.create({name:@patientName,dob:@dob,phone:@phone})
        @newChat = Chatroom.create({name:@room_name})
        @newUC = Userchat.create({user_id:@user1[0].id,chatroom_id:@newChat.id})
        @newUC = Userchat.create({user_id:@newUser.id,chatroom_id:@newChat.id})
        @newMsg = Message.create({user_id:@user1[0].id,message:@message,chatroom_id:@newChat.id})
        @newMsg2 = Message.create({user_id:@newUC.id,message:"pending response",chatroom_id:@newChat.id})
        @chatrooms = @user1[0].chatrooms
        render json: @chatrooms
      elsif params["patient"]
        @chatroom = Chatroom.where("name=?",params["room"])
        @users = @chatroom[0].users
        render json: @users
      else
      @user = User.where("id = ?",params[:user_id])
      @chatrooms = @user[0].chatrooms
      render json: @chatrooms
      end
  end

  private

  def chatroomParams
    params.require(:chatroom).permit(:name,:chatroom_id,:user_id)
  end

end
