class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show,:update,:destroy]

  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.create(user_params)
    render json: user, status: 201
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    userId = @user.id
    @user.destroy
    render json: {message:"User Deleted!", userId:userId}
  end

  def show
    render json: @user, status: 200
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :location)
    # params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation?, :location)

end

#   t.string :first_name
#   t.string :last_name
#   t.string :email
#   t.string :password_digest
#   t.string :location
#   t.string :profile_photo

  def set_user
    @user = User.find(params[:id])
  end
end


