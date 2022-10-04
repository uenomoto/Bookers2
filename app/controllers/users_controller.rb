class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  
  
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
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
    redirect_to user_path(current_user.id)
    else
    render :edit
    end
  end
  
  
  private
  
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def is_matching_login_user
    user_id = params[:id]
    login_user_id = current_user.id
    if(user_id != login_user_id)
      redirect_to user_path(current_user.id)
    end
  end
   
end
