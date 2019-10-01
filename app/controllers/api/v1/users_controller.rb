class Api::V1::UsersController < ApplicationController

    ####* JWT ####
    skip_before_action :authorized, only: [:create]

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
      users = User.all
      render json: users
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
   

  # def profile
  #   render json: { user: UserSerializer.new(current_user) }, status: :accepted
  # end

  

  def show
    user = User.find(params[:id])
    render json: user
  end

end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :profile_photo)
    # params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation?, :location)

end

#   t.string :first_name
#   t.string :last_name
#   t.string :email
#   t.string :password_digest
#   t.string :location
#   t.string :profile_photo

#   def set_user
#     @user = User.find(params[:email])
#   end
# end


