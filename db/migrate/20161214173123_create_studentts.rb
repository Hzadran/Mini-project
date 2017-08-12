class CreateStudentts < ActiveRecord::Migration[5.0]
  def change
    create_table :studentts do |t|
      t.string :st_name
      t.string :F_name
      t.string :Address
      t.string :Gender
      t.string :Cell
      t.string :Local_domicail
      t.string :Nationality
      t.string :CNIC
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
