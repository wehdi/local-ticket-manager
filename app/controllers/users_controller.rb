class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: %I[show edit update destroy close]
  def index
    if params[:approved] == "false"
     @users = User.where(approved: false)
    else
     @users = User.all
    end
  end

  def show;end

  def edit
  end

  def new
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,:approved,:password,:admin)
  end

   def find_user
    @user = User.find(params[:id])
   end
end