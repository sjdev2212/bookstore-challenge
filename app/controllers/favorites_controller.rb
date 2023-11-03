class FavoritesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @favorites = current_user.favorites
    end
    def show
        @favorite = Favorite.find(params[:id])
    end
    def new
        @favorite = Favorite.new
    end
    def create
   book = Book.find(params[:book_id])
    favorite = current_user.favorites.build(book: book)
    if favorite.save
      redirect_to book_path(book), notice: 'Book was successfully added to your favorites.'
    else
      redirect_to book_path(book), alert: 'Unable to add book to your favorites.'
    end
    
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to book_path(@favorite.book), notice: 'Book was successfully removed from your favorites.'
      
      
    end
   
end
