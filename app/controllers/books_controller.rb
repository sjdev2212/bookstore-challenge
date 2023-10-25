class BooksController < ApplicationController
  load_and_authorize_resource 

  # GET /books or /books.json


def index
  @search = params[:search]
  @search_by = params[:search_by]
  @books = Book.paginate(page: params[:page], per_page: 3)

  if @search.present?
    case @search_by
    when 'Title'
      @books = @books.where('title ILIKE ?', "%#{@search}%")
    when 'ISBN'
      @books = @books.where('CAST(isbn AS text) LIKE ?', "%#{@search}%")
    when 'Author'
      @books = @books.joins(:author).where('authors.first_name ILIKE ? OR authors.last_name ILIKE ?', "%#{@search}%", "%#{@search}%")
    when 'Publisher'
      @books = @books.joins(:publisher).where('publishers.name ILIKE ?', "%#{@search}%")
    end
  end
end




  # GET /books/1 or /books/1.json
 def show
    @book = Book.find(params[:id])
   
  end

  def new
    @author = Author.find(params[:author_id])
    @full_name = "#{@author.first_name} #{@author.last_name}"
    @book = @author.books.build
    @publishers = Publisher.all # F
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.build(book_params)
  
    if params[:book][:new_publisher_name].present?
      # If a new publisher name is provided, create a new publisher
      @book.publisher = Publisher.create(name: params[:book][:new_publisher_name])
    end
  
    if @book.save
      redirect_to root_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end
  
  def edit
  end
  def update
    if @book.update(book_params)
      # Book updated successfully
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end
  def destroy
    @book = Book.find(params[:id]) # Find the book to delete
    @book.destroy
  
    # Book deleted successfully
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end
  



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
    params.require(:book).permit(:title, :author_name, :author_id, :review, :price, :date_of_publication, :isbn, :publisher_id, :new_publisher_name)
    end
end
