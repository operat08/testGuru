class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :created_tests, class_name: "Test", foreign_key: "author_id", dependent: :nullify

  validates :name, presence: true
  validates :email, format: { with: /\w+@\w+\.\w/ }, uniqueness: true

  has_secure_password

  def test_list_on_level(level)
    tests.where(level: level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test: test)
  end
end
