class AddBookReferenceToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorites, :book, null: false, foreign_key: true, index: true
  end
end
