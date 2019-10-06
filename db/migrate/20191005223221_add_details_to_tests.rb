class AddDetailsToTests < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:tests, :level, from: false, to: 0)
    change_column_null(:tests, :title, false)
    add_reference :tests, :category, foreign_key: true
  end
end
