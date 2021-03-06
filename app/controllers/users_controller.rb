class UsersController < ApplicationController
  before_action :authorize, only: [:profile, :show, :edit, :destroy]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
  end
end
  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
