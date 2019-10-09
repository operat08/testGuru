class User < ApplicationRecord
  has_many :users_tests, dependent: :destroy
  has_many :tests, through: :users_tests
  has_many :tests, foreign_key: "author", dependent: :nullify

  def test_list_on_level(level)
    tests.where(level: level)
  end
end
