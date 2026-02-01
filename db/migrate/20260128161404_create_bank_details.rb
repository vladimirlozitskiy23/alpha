class CreateBankDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_details do |t|
      t.belongs_to :payment
      t.string :name
      t.string :adress
      t.string :phone
      t.string :settlement_account
      t.string :correspondent_account
      t.string :BIK
      t.string :bank_name
      t.string :INN
      t.string :KPP
      t.string :OKPO
      t.string :OGRN
      t.string :OKWED

      t.timestamps
    end
  end
end
