class AddDetailsToTests < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:tests, :level, from: nil, to: 0)
    change_column_null(:tests, :title, false)
  end
end
