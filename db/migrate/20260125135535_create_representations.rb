class CreateRepresentations < ActiveRecord::Migration[7.0]
  def change
    create_table :representations do |t|
      t.string :sity
      t.string :adress
      t.string :president

      t.timestamps
    end
  end
end
