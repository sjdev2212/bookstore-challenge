class BooksController < ApplicationController
  load_and_authorize_resource 

  # GET /books or /books.json
  def index
@books = Book.paginate(page: params[:page], per_page: 3)
end


  # GET /books/1 or /books/1.json
  def show
  end
  def new
    @author = Author.find(params[:author_id])
    @full_name = "#{@author.first_name} #{@author.last_name}"
  @book = @author.books.build
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.build(book_params)
    
    if @book.save
      # Book created successfully
      redirect_to @author, notice: 'Book was successfully created.'
    else
      render :new
    end
  end
  



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
    params.require(:book).permit(:title, :author_name, :author_id, :review, :price, :date_of_publication, :isbn)
    end
end
