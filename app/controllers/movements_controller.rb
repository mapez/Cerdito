class MovementsController < ApplicationController

  def index
    @incomes = Income.order(id: :desc).limit(10)
    @expenses = Expense.order(id: :desc).limit(10)
  end
end