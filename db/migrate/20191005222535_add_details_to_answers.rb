class AddDetailsToAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:answers, :correct, true)
  end
end
