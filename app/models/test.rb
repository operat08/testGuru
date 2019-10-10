class Test < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "author_id", optional: true
  belongs_to :category, optional: true
  has_many :questions, dependent: :destroy
  has_many :users_tests, dependent: :destroy
  has_many :users, through: :users_tests

  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :title, presence: true
  validates :title, uniqueness: { case_sensitive: false, scope: :level }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :sort_by_category, ->(name) { joins(:category).where(categories: { title: name }).order('categories.title desc') }

  def self.by_category(name)
    sort_by_category(name).pluck(:title)
  end
end
