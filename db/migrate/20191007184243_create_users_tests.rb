class CreateUsersTests < ActiveRecord::Migration[6.0]
  def change
    create_table :users_tests do |t|
      t.string :result

      t.timestamps
    end
  end
end
