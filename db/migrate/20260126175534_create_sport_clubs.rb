class CreateSportClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_clubs do |t|
      t.string :name
      t.string :director_name
      t.string :adress
      t.string :phone
      t.string :email
      t.string :site

      t.timestamps
    end
  end
end
