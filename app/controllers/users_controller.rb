class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @ahorro = current_user.user.order(id: :desc).limit(5)
    render 'users/show'
  end

  def update

    current_user.update_attributes(user_params)
    @users = User.paginate(:page => params[:page], :per_page => 5)
    render 'users/update'
   
  end

  protected

  def user_params
    params.require(:user).permit(:ahorro)
  end

end
