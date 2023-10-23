class AddDateOfPublicationToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :date_of_publication, :date
  end
end
