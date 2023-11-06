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

    
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to book_path(@favorite.book), notice: 'Book was successfully removed from your favorites.'
      
      
    end
   
end
