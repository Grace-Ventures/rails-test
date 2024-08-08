class TasksController < ApplicationController
  before_action :authenticate, only: [:new]
  before_action :set_tasks

  def new 
  end

  def create 
    if @task.save
      redirect_back fallback_location: root_url
    else 
      render :new
    end
  end

  def completed 
    if @task.completed!
      redirect_back fallback_location: root_url
    else
      render :new
    end
  end

  def destroy
    if @task.destroy 
      redirect_back fallback_location: root_url
    else
      render :new
    end
  end

  private 

  def set_tasks 
    @task = params[:id].present? ? Task.find(params[:id]) : Task.new

    @tasks = Task.all
  end

  def task_params 
    params.permit!
  end

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "grace" && password == "password"
    end
  end
end