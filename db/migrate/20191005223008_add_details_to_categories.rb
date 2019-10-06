class AddDetailsToCategories < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :title, false)
    add_reference :categories, :question, foreign_key: true
  end
end
