class ExpensesController < ApplicationController
  def index
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def create
    @expense = current_user.expenses.create expense_params

    redirect_to @expense
  end

  def update
  end

  def edit
  end

  def new
    @expense = Expense.new
  end

  def delete
  end

  protected
  def expense_params
    params.require(:expense).permit(:amount, :description)
  end

end
