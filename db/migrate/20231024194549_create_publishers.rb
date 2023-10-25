class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|

      t.timestamps
    end
  end
end
