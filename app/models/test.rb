class Test < ApplicationRecord
  belongs_to :user, foreign_key: "author", optional: true
  belongs_to :category, optional: true
  has_many :questions, dependent: :destroy
  has_many :users_tests, dependent: :destroy
  has_many :users, through: :users_tests

  def self.sort_by_category(name)
    joins(:category)
      .where(categories: { title: name })
      .order('categories.title desc')
      .pluck(:title)
  end
end
