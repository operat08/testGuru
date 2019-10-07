class AddDetailsToAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:answers, :correct, from: nil, to: false)
    add_reference :answers, :question, foreign_key: true
  end
end
