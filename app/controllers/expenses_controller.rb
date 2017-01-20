class ExpensesController < ProtectedController
  before_action :set_expense, only: [:show, :update, :destroy]

  def set_expense
    @expense = Expense.find(params[:id])
    @band =  current_user.bands.find(@expense.band)
  end

  def expense_params
    params.require(:expense).permit(:name, :cost, :details, :band_id)
  end

  def index
    @expenses = current_user.bands.find(expense_params[:band_id])
                            .expenses

    render json: @expenses
  end

  def show
    render json: @expense
  end

  def create
    @expense = current_user.bands.find(expense_params[:band_id])
                           .expenses.build(expense_params)

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
