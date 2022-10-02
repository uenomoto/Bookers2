class BooksController < ApplicationController
  def new
  end
  
  def create
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
  
   def book_params
    params.require(:book).permit(:title, :opinion)
   end
  
end

