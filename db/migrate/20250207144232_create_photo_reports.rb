class CreatePhotoReports < ActiveRecord::Migration[7.0]
  def change
    create_table :photo_reports do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
