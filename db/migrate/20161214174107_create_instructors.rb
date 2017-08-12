class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :ins_name
      t.string :f_name
      t.string :cell
      t.string :Email
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
