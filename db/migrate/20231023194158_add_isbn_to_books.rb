class AddIsbnToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :isbn, :bigint
  end
end
