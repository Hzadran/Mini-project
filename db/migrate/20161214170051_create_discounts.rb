class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.integer :Dis_Amount
      t.string :Referenced_by

      t.timestamps
    end
  end
end
