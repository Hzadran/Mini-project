class CreatePaymentts < ActiveRecord::Migration[5.0]
  def change
    create_table :paymentts do |t|
      t.integer :Amount
      t.references :discount, foreign_key: true
      t.references :cheque, foreign_key: true
      t.integer :Total_fee
      t.integer :Remaining_fee
      t.date :pay_date
      t.references :studentt, foreign_key: true

      t.timestamps
    end
  end
end
