class TasksController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to root_path
  end

  def destroy

    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end


  private
  def task_params
    params.require(:task).permit(:name)
  end

end
