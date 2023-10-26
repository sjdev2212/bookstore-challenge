class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find_by_id(params[:id])
    render json: @book
  end

  def create
    @book = Book.create(book_params)
    render json: @book
  end

  def update
    @book = Book.find_by_id(params[:id])
    @book.update(book_params)
    render json: @book
  end

  def destroy
    @book = Book.find_by_id(params[:id])
    @book.destroy
    render json: { message: "Book Deleted" }
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :author_name, :author_id, :review, :price, :date_of_publication, :isbn,
                                 :publisher_id, :new_publisher_name)
  end
end
