class User < ApplicationRecord
  has_many :users_tests
  has_many :tests, through: :users_tests
  has_one :test

  def test_list_on_level(level)
    Test.joins('JOIN users_tests ON tests.id = users_tests.test_id')
      .where(tests: { level: level }, users_tests: { user_id: id })
  end
end
