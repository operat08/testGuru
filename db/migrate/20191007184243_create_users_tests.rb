class CreateUsersTests < ActiveRecord::Migration[6.0]
  def change
    create_table :users_tests do |t|
      t.string :result, default: false

      t.timestamps
    end
    add_reference :users_tests, :test, foreign_key: true
    add_reference :users_tests, :user, foreign_key: true
  end
end
