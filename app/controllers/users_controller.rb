class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all #ユーザー一覧表示用
    #render :json => @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_url
  end

  def show  
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_url
  end

  def destroy
    @user.destroy
    redirect_to root_url
  end

  def set_user
    @user = User.find(params['id'])
  end
  
  private 
  def user_params
    params.require(:user).permit(:name, :image)
  end
end
