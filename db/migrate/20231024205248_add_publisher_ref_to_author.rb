class AddPublisherRefToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_reference :authors, :publisher, foreign_key: true
  end
end
