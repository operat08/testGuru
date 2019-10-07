class User < ApplicationRecord
  def test_list_on_level(level)
    Test.joins('JOIN users_tests ON tests.id = users_tests.test_id').where("level == ? AND user_id == ?", level, id)
  end
end
