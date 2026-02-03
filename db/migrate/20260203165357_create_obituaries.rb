class CreateObituaries < ActiveRecord::Migration[7.0]
  def change
    create_table :obituaries do |t|
      t.string :name
      t.string :rank
      t.string :biography
      t.date :death

      t.timestamps
    end
  end
end
