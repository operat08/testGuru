class User < ApplicationRecord
  def test_list_on_level(level)
    users = User.where('name == ?', self.name)
    users.inject([]) do |acc, elem|
      test = Test.find(elem.test_id)
      test.level == level ? [*acc, test] : acc
    end
  end
end
