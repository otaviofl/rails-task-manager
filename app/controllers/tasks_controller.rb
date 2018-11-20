class TasksController < ApplicationController
  before_action :task_find, only: [:edit, :show, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    end
  end

  def new
    @task = Task.new
  end

  def edit
    # redirect_to tasks_path
  end

  def show
  end

  def update
    raise
    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_find
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end


end
