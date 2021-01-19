class UsersController < ApplicationController
  def index
    @user = User.new  #form用インスタンス
    @users = User.all #ユーザー一覧表示用
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_url
  end
  
  private 
  def user_params
    params.require(:user).permit(:name, :image)
  end
end
