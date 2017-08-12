class CreateStuHasDeps < ActiveRecord::Migration[5.0]
  def change
    create_table :stu_has_deps do |t|
      t.references :department, foreign_key: true
      t.references :studentt, foreign_key: true

      t.timestamps
    end
  end
end
