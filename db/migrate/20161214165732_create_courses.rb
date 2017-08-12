class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :Course_Name
      t.string :Course_Duration

      t.timestamps
    end
  end
end
