class TasksController < ApplicationController
  skip_before_action :authenticate

  def index
    tasks = Task.all
    render json: {tasks: tasks} 
  end

  def show
    task = Task.find_by(name: params[:name])
  end

  def new
  end

  def edit
  end


end
