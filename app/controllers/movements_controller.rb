class MovementsController < ApplicationController

  def index
    @sum = 0
    @incomes = current_user.incomes.order(id: :desc).limit(5)
    @expenses = current_user.expenses.order(id: :desc).limit(5)
    @incomes.each do |inc|
      @sum += inc.amount
    end
    @expenses.each do |inc|
      @sum += inc.amount
    end
  end

  

  def show
    @incomes = Income.find(params[:id])
    @expenses = Expense.find(params[:id])
  end

end