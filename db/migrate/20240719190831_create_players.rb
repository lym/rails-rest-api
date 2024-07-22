class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.date :birth_date

      t.timestamps
    end
  end
end
