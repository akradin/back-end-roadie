class TasksController < ProtectedController
  before_action :set_task, only: [:show, :update, :destroy]

  def set_task
    @task = current_user.bands.find(task_params[:band_id]).tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :due_date, :priority, :details, :completed, :band_id)
  end

  def index
    @tasks = Task.where(:band_id => params[:band])
    puts 'params is'
    puts params
    render json: @tasks
  end

  def show
    render json: Task.find(params[:id])
  end

  def create
    if current_user.bands.find(task_params[:band_id])
      @task = Task.new(task_params)
    else
      render json: { error: 'Not Authorized' }
    end

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
