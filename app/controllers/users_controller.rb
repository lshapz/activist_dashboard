class UsersController < ApplicationController
  # skip_before

  def show
    user = User.find(params[:id])
    jwt = Auth.issue({user_id: user.id})
    render json: {jwt: jwt}
  end

  def create
    user = User.new(user_params)
    if user.save
    # user = User.find_by(email: params[:email]
      jwt = Auth.issue({user_id: user.id})
      render json: {jwt: jwt}
    else
      render json: {error: 'user not unique'}
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end