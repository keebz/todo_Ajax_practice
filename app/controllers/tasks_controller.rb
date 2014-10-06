class TasksController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.all
    @task = Task.create(task_params)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end


  private
  def task_params
    params.require(:task).permit(:name)
  end

end
