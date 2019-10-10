# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([{ name: 'Vasiliy', email: 'io@ya.eu' }, { name: 'Fedor', email: 'jj@hh.ru' }, { name: 'Jack', email: 'res@g.com' }])

categories = Category.create!([{ title: 'About me' },
  { title: 'About weather' },
  { title: 'About JavaScript' }
])

tests = Test.create!([{ title: 'Vasiliy', category: categories[0], author: users[0] },
  { title: 'Weather', category: categories[1], author: users[2] },
  { title: 'JavaScript', category: categories[2], author: users[1] },
  { title: 'Sun', category: categories[0], author: users[0] }
])

questions = Question.create!([{ title: 'How do I do?', test: tests[0] },
  { title: 'What is my name?', test: tests[0] }, { title: 'Is the weather fine?', test: tests[1] },
  { title: 'Do I like rain?', test: tests[1] }, { title: '^ is ?', test: tests[2] }
])

answers = Answer.create!([{ title: 'not fine', question: questions[0] }, { title: 'fine', question: questions[0], correct: 't'}, 
  { title: 'Fedor', question: questions[1] }, { title: 'Vasiliy', correct: 't', question: questions[1] }, 
  { title: 'The weather is fine', correct: 't', question: questions[2] }, { title: 'The weather not fine', question: questions[2] }, 
  { title: 'I like rain', correct: 't', question: questions[3] }, {title: 'I do not like rain', question: questions[3] }, 
  { title: 'OR', question: questions[4] }, { title: 'XOR', correct: 't', question: questions[4] }
])

users_tests = UsersTest.create!([{ test: tests[0], user: users[0], result: 't' },
  { test: tests[2], user: users[0] }, { test: tests[1], user: users[1] },
  { test: tests[1], user: users[1] }, { test: tests[2], user: users[2] }
])
