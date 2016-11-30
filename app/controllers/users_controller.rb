class UsersController < ApplicationController
    skip_before_action :authenticate

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end
end
