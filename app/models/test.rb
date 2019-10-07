class Test < ApplicationRecord
  def self.sort_by_category(category)
    tests = Test.all.order(title: :desc)
    tests.inject([]) do |acc, elem|
      current_category = Category.find(elem.category_id)
      current_category.title == category ? [*acc, elem.title] : acc
    end
  end
end
