class Test < ApplicationRecord
  has_many :questions
  belongs_to :category
  has_many :users_tests
  has_many :users, through: :users_tests
  belongs_to :user

  def self.sort_by_category(category)
    joins('JOIN categories ON tests.category_id = categories.id')
      .where(categories: { title: category })
      .order('categories.title desc')
      .pluck(:title)
  end
end
