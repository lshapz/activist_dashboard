class IssuesController < ApplicationController
    # skip_before_action :authenticate

  def index
    issues = Issue.all
    render json: issues
  end

  def show
    issue = Issue.find(params[:id]) # ???
    render json: issue
  end
  
end
