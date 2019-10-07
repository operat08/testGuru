class Test < ApplicationRecord
  def self.sort_by_category(category)
    Test.select(:title).joins('JOIN categories ON tests.id = categories.test_id')\
      .where("categories.title == ?", category)\
      .order('categories.title desc')
  end
end
