class Test < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "author_id", optional: true
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
