class MovementsController < ApplicationController

  def index
    @incomes = Income.order(id: :desc).limit(5)
    @expenses = Expense.order(id: :desc).limit(5)
  end
end