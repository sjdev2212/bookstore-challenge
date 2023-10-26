class CreatePriceUpdates < ActiveRecord::Migration[7.0]
  def change
    create_table :price_updates do |t|
      t.references :publisher, null: false, foreign_key: true
      t.string :update_type
      t.float :percentage

      t.timestamps
    end
  end
end
