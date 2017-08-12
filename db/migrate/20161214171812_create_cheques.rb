class CreateCheques < ActiveRecord::Migration[5.0]
  def change
    create_table :cheques do |t|
      t.integer :Cheque_no
      t.string :Bank_name
      t.date :ch_date

      t.timestamps
    end
  end
end
