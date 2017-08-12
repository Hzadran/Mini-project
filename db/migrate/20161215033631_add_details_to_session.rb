class AddDetailsToSession < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :sess_ending, :date
  end
end
