class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:users, :name, false)
    add_reference :users, :test, foreign_key: true
  end
end
