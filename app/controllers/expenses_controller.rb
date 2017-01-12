class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :update, :destroy]

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:name, :cost, :description)
  end

  def index
    @expenses = Expense.all

    render json: @expenses
  end

  def show
    render json: Expense.find(params[:id])
  end

  def create
    @expense = Expense.new(expense_params)

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
