class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def register
    user = User.new(user_params)
    if user.save
      render json: user, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by_email(params[:email]) || User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      token = Auth.issue({ id: user.id })
      render json: { token: token, user: UserSerializer.new(user) }, status: :ok
    else
      render json: { errors: ["Invalid login credentials."] }, status: 401
    end
  end

  private
  def user_params
    Hash.new.merge! params.slice(:username, :email, :password, :password_confirmation, :profile_picture, :address_line1, :address_line2, :address_line3, :address_line4, :base64)
  end
end