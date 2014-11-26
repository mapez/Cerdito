class MovementsController < ApplicationController

  def index
    @incomes = current_user.incomes.order(id: :desc).limit(5)
    @expenses = current_user.expenses.order(id: :desc).limit(5)
    @balance = Balance.new current_user
  end

  

  def show
    @incomes = Income.find(params[:id])
    @expenses = Expense.find(params[:id])
  end

end