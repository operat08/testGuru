class AddDetailsToUsersTest < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:users_tests, :result, from: nil, to: false)
    add_reference :users_tests, :test, foreign_key: true
    add_reference :users_tests, :user, foreign_key: true
  end
end
