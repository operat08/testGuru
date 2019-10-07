# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tests = Test.create!([{ title: 'Vasiliy' }, { title: 'Weather' }, { title: 'JavaScript' }])
users = User.create!([{ name: 'Vasiliy' }, { name: 'Fedor' }, { name: 'Jack' }])

questions = Question.create!([{ title: 'How do I do?', test_id: tests[0].id },
  { title: 'What is my name?', test_id: tests[0].id }, { title: 'Is the weather fine?', test_id: tests[1].id },
  { title: 'Do I like rain?', test_id: tests[1].id  }, { title: '^ is ?', test_id: tests[2].id }
])

categories = Category.create!([{ title: 'About me', test_id: tests[0].id },
  { title: 'About weather', test_id: tests[1].id },
  { title: 'About JavaScript', test_id: tests[2].id }
])

answers = Answer.create!([{ title: 'not fine', question_id: questions[0].id }, {title: 'fine', question_id: questions[0].id, correct: 't'}, 
  { title: 'Fedor', question_id: questions[1].id}, { title: 'Vasiliy', correct: 't', question_id: questions[1].id}, 
  { title: 'The weather is fine', correct: 't', question_id: questions[2].id}, {title: 'The weather not fine', question_id: questions[2].id}, 
  { title: 'I like rain', correct: 't', question_id: questions[3].id}, {title: 'I do not like rain', question_id: questions[3].id}, 
  { title: 'OR', question_id: questions[4].id}, {title: 'XOR', correct: 't', question_id: questions[4].id}
])

users_tests = UsersTest.create!([{ test_id: tests[0].id, user_id: users[0].id, result: 't' },
  { test_id: tests[2].id, user_id: users[0].id }, { test_id: tests[1].id, user_id: users[1].id },
  { test_id: tests[1].id, user_id: users[1].id }, { test_id: tests[2].id, user_id: users[2].id }
])
