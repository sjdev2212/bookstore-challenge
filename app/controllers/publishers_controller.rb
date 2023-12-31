class PublishersController < ApplicationController
  def index
    @publishers = Publisher.paginate(page: params[:page], per_page: 4)
    @search = params[:search]

    if @search.present?
      @publishers =
        Publisher
        .where('publishers.name ILIKE ?', "%#{@search}%")
        .paginate(page: params[:page], per_page: 10)
    end
    if @publishers.empty?
      # No results found for the search
      flash.now[:notice] = "No publishers match your search."
    end
  end

  def show
    @publisher = Publisher.find(params[:id])
  end

  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to publishers_path
    else
      render :new
    end
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def update
    @publisher = Publisher.find(params[:id])

    if @publisher.update(publisher_params)
      redirect_to books_path, notice: 'Publisher was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    redirect_to books_path, notice: 'Publisher was successfully deleted.'
  end

  private

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
