class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.date :Sess_Starting
      t.date :Sess_ending
      t.timestamps
    end
  end
end
