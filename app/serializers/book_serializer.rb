class BookSerializer < ActiveModel::Serializer
  attributes *Book.column_names # :id, :title, :author_name, :review, :price, :date_of_publication, :isbn, :publisher_id, :created_at, :updated_at, :new_publisher_name
end
