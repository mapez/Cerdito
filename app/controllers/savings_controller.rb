class SavingsController < ApplicationController
  def index
  end

  def show
    user
  end

  def edit
  end

  def new
  end

  protected

  def user_params
    params.require(:user).permit(:ahorro)
  end
end
