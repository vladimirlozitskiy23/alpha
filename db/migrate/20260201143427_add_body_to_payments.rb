class AddBodyToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :body, :string
  end
end
