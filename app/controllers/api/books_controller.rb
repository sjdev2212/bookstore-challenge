class Api::BooksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  def index
    @books = Book.paginate(page: params[:page], per_page: params[:per_page] || 10)
    render json: @books, meta: pagination(@books)
  end

  def pagination(collection)
    {
      current_page: collection.current_page,
      per_page: collection.per_page,
      total_pages: collection.total_pages,
      total_entries: collection.total_entries
    }
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
    render json: { message: 'Book Deleted' }
  end


  def filter
  
    filtered_books = Book.all

    if params[:name].present?
      filtered_books = filtered_books.where("name ILIKE ?", "%#{params[:name]}%")
    end

    if params[:min_price].present? && params[:max_price].present?
      filtered_books = filtered_books.where(price: params[:min_price]..params[:max_price])
    end

    if params[:author_id].present?
      filtered_books = filtered_books.where(author_id: params[:author_id])
    end

    render json: filtered_books
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_name, :author_id, :review, :price, :date_of_publication, :isbn,
                                 :publisher_id, :new_publisher_name)
  end
end
