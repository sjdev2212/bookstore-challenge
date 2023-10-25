class PublishersController < ApplicationController
    def index
        @publishers = Publisher.all
        @search = params[:search]
      
        if @search.present?
            @publishers =
                Publisher
                .where('publishers.name ILIKE ?', "%#{@search}%")
                .paginate(page: params[:page], per_page: 10)
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
            redirect_to  publishers_path 
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
          redirect_to @publisher, notice: 'Publisher was successfully updated.'
        else
          render :edit
        end
      end
      
    def destroy
        @publisher = Publisher.find(params[:id])
        @publisher.destroy
        redirect_to publishers_path
    end
    private
    def publisher_params
        params.require(:publisher).permit(:name)
    end

end
