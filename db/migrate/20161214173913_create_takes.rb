class CreateTakes < ActiveRecord::Migration[5.0]
  def change
    create_table :takes do |t|
      t.references :course, foreign_key: true
      t.references :studentt, foreign_key: true

      t.timestamps
    end
  end
end
