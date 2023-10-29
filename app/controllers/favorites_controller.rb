class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    @favorites = current_user.favorite_books
  end

  def new
    @favorite = Favorite.new
  end

  
  def create
    book = Book.find(params[:book_id])
    current_user.favorite_books << book
    redirect_to book, notice: 'Book added to favorites'
  end
  
  def destroy
    book = Book.find(params[:book_id])
    current_user.favorite_books.delete(book)
    redirect_to book, notice: 'Book removed from favorites'
  end
  
  

  private

  def favorite_params
    params.require(:favorite).permit(:book_id, :user_id)
  end
end
