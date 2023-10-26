class PriceUpdateJob < ApplicationJob
    queue_as :default
  
    def perform(price_update)
      publisher = Publisher.find(price_update.publisher_id)
      update_books(publisher, price_update.update_type, price_update.percentage)
    end
  
    private
  
    def update_books(publisher, update_type, percentage)
      # Find all books belonging to the selected publisher
      books = publisher.books
  
      # Update the book prices based on the chosen update type and percentage
      books.each do |book|
        if update_type == 'increase'
          book.update(price: book.price * (percentage / 100) + book.price)
        elsif update_type == 'decrease'
          book.update(price: (book.price * (percentage / 100) - book.price).abs)
        end
      end
    end
  end
  