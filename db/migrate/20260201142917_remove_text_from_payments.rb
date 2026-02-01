class RemoveTextFromPayments < ActiveRecord::Migration[7.0]
  def change
    remove_column :payments, :text
  end
end
