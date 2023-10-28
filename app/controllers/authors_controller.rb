class AuthorsController < ApplicationController
  def index
    @authors = Author.includes(:books).paginate(page: params[:page], per_page: 7)
    @search = params[:search]

    if @search.present?
      @authors =
        Author
        .where('authors.first_name ILIKE ? OR authors.last_name ILIKE ?', "%#{@search}%", "%#{@search}%")
        .paginate(page: params[:page], per_page: 10)
    end
  end

  def about_modal
    @author = Author.find(params[:id])
    render 'remote_modal', layout: true
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to books_path, notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    if author.update(author_params)
      redirect_to books_path, notice: 'Author was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy
    redirect_to books_path, notice: 'Author was successfully deleted.'
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :date_of_birth, :about, :nationality, :publisher_id)
  end
end
