class ExpensesController < ProtectedController
  before_action :set_expense, only: [:show, :update, :destroy]

  def set_expense
    @expense = current_user.bands.find(expense_params[:band_id]).expenses.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:name, :cost, :details, :band_id)
  end

  def index
    @expenses = Expense.where(:band_id => params[:band])
    puts 'params is'
    puts params
    render json: @expenses
  end

  def show
    render json: Expense.find(params[:id])
  end

  def create
    if current_user.bands.find(expense_params[:band_id])
      @expense = Expense.new(expense_params)
    else
      render json: { error: 'Not Authorized' }
    end

    if @expense.save
      render json: @expense, status: :created
    else
      render json: @expense.errors, status: :unprocessible_entity
    end
  end

  def update
    if @expense.update(expense_params)
      head :no_content
    else
      render json: @expense.errors, status: :unprocessible_entity
    end
  end

  def destroy
    @expense.destroy

    head :no_content
  end
end
