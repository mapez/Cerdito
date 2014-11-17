class IncomesController < ApplicationController
  def index
  end

  def show
    @income = Income.find(params[:id])
  end

  def create
    @income = Income.create income_params

    redirect_to @income
  end

  def update
  end

  def edit
  end

  def new
    @income = Income.new
  end

  def delete
  end

  protected
  def income_params
    params.require(:income).permit(:amount)
  end
end
