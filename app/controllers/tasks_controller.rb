class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # @task.update(params[:tasks])
    # redirect_to tasks_path # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
