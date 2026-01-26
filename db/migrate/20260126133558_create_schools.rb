class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :director_name
      t.string :phone
      t.string :adress
      t.string :email
      t.string :site

      t.timestamps
    end
  end
end
