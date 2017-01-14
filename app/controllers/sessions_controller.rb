class SessionsController < ApplicationController
  skip_before_action :authenticate
  # , only: [:create, :new]
   def protect_against_forgery?
        false
   end

  def create
    user = User.find_by(emailaddress: auth_params[:email])
    if user && user.authenticate(auth_params[:password])
      jwt = Auth.issue({user: user.id})
      # @users = User.all
      render json: {jwt: jwt}
      # redirect_to users_path
    else
      render json: {:errors=>
        [{:detail=>"incorrect email or password", 
          :source=>{:pointer=>"user/err_type"}}
        ]}, status: 404
    end
  end

  private
    def auth_params
      params.require(:auth).permit(:email, :password)
    end
end