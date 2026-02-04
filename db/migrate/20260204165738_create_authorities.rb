class CreateAuthorities < ActiveRecord::Migration[7.0]
  def change
    create_table :authorities do |t|
      t.string :name
      t.string :rank
      t.string :position
      t.string :biography
      t.integer :status

      t.timestamps
    end
  end
end
