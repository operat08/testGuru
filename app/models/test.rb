class Test < ApplicationRecord
  belongs_to :user, foreign_key: "author_id"
  belongs_to :category
  has_many :questions, dependent: :destroy
  has_many :users_tests, dependent: :destroy
  has_many :users, through: :users_tests, dependent: :destroy

  def self.sort_by_category(name)
    Category.find_by(title: name).tests.order('title desc').pluck(:title)
  end
end
