class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :due_date, :priority, :details, :completed, :band_id)
  end

  def index
    @tasks = Task.all

    render json: @tasks
  end

  def show
    render json: Task.find(params[:id])
  end

  def create
    @task = Task.new

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessible_entity
    end
  end

  def update
    if @task.update(task_params)
      head :no_content
    else
      render json: @task.errors, status: :unprocessible_entity
    end
  end

  def destroy
    @task.destroy

    head :no_content
  end
end
