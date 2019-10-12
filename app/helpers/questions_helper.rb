module QuestionsHelper
  METHODS = { create: 'Create', edit: 'Edit' }.freeze

  def question_header(method, test)
    "#{METHODS[method]} #{test.title} Question"
  end
end
