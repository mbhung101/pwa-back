class Api::UsersController < ApplicationController

  def index
    @user = User.order(:created_at)
    render json: @user
  end

  def create
    if (params[:password])
      @user = User.where("name = ?",params[:name]).where("password = ?",params[:password])
      render json:@user
    elsif (params[:dob])
      @user = User.where("name = ?",params[:name]).where("dob = ?",params[:dob])
      render json: @user
    else
      @user = User.where("id =?",params["id"])
      render json: @user
    end
  end

  private

  def verifyParams
    params.require(:user).permit(:name,:dob,:online)
  end
end
