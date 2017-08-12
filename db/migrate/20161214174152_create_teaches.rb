class CreateTeaches < ActiveRecord::Migration[5.0]
  def change
    create_table :teaches do |t|
      t.references :course, foreign_key: true
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
