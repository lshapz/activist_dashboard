class ApplicationController < ActionController::API
  # before_action :authenticate 
  # protect_from_forgery with: :null_session

  def logged_in?
    !!current_user
  end

  def current_user
    User.find(Auth.decode(request.env["HTTP_AUTHORIZATION"])[0]["user_id"]) if request.env["HTTP_AUTHORIZATION"].present?

    # if auth_present?
    #   user = User.find(auth["user"])
    #   if user
    #     @current_user ||= user
    #   end
    # end
  end

   def protect_against_forgery?
        false
   end


  def authenticate
    render json: {error: "unauthorized"} unless logged_in?
  end

  private

    def token
      request.env["HTTP_AUTHORIZATION"].scan(/Bearer (.*)$/).flatten.last
    end

    def auth
      Auth.decode(token)
    end

    def auth_present?
      !!request.env.fetch("HTTP_AUTHORIZATION", "").scan(/Bearer/).flatten.first
    end
end

