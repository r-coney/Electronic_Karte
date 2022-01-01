class UsersController < ApplicationController

  def index
    @users = User.all
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      redirect_to @user, notice: "スタッフ#{@user.name}を登録しました"
    else
      render :new    
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "#スタッフ情報を更新しました"
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation)
    end
end
