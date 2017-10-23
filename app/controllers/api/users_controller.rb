class Api::UsersController < ApplicationController

  def index
    @user = User.order(:created_at)
    render json: @user
  end

  def create
    if (params.permitted?) === true
      @user = User.create(userParams)
      render json:@user
    else
      @user = User.where("name = ?",verifyParams[:name]).where("dob = ?",verifyParams[:dob])
         render json: @user
      end
  end

  private

  def userParams
    params.require(:user).permit(:name,:phone,:dob,:pca,:online)
  end

  def verifyParams
    params.require(:user).permit(:name,:dob,:online)
  end
end
