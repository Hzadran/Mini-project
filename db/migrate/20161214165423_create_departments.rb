class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :dep_name
      t.string :dep_location

      t.timestamps
    end
  end
end
