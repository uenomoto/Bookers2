class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @books = Book.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end
  
  
  private
  
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  
end
