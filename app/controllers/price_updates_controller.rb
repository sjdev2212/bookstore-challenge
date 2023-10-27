class PriceUpdatesController < ApplicationController
  def new
    @price_update = PriceUpdate.new
  end

  def create
    @price_update = PriceUpdate.new(price_update_params)
    if @price_update.save
      # Enqueue the Sidekiq job to update book prices
      PriceUpdateJob.perform_later(@price_update)
      flash[:success] = 'Price update job has been enqueued.'
      redirect_to root_path
    else
      render :new
    end
  end

  # ...

  private

  def price_update_params
    params.require(:price_update).permit(:publisher_id, :update_type, :percentage)
  end
end
