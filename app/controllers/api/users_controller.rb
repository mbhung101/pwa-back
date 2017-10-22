class Api::UsersController < ApplicationController

  def index
    @user = User.order(:created_at)
    render json: @user
  end

  def create
    @user = User.create(userParams)
    render json:@user
  end

  private
  def userParams
    params.require(:user).permit(:name,:phone,:dob,:pca,:online)
  end

end
