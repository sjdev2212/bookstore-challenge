class CreateAuthorTable < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.date   :date_of_birth
      t.text   :about
      t.string :nationality

      t.timestamps
    end
  end
end
