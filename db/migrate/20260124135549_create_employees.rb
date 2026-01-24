class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :rank
      t.string :award
      t.string :biography

      t.timestamps
    end
  end
end
