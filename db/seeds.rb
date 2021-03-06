# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([{ first_name: 'Vasiliy', last_name: 'Vvv', email: 'io@ya.eu', password: '123456', type: 'Admin' }, { first_name: 'Fedor', email: 'jj@hh.ru', password: 'sadsad' }, 
{ last_name: 'Jack', email: 'res@g.com', password: 'asdasd' }])

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
  { title: 'What is my name?', test: tests[0] }, { title: 'Is the weather fine?', test: tests[0] },
  { title: 'Do I like rain?', test: tests[1] }, { title: '^ is ?', test: tests[2] }
])

answers = Answer.create!([{ title: 'not fine', question: questions[0] }, { title: 'fine', question: questions[0], correct: true }, 
  { title: 'medium', question: questions[0] }, { title: 'idk', question: questions[0] },
  { title: 'Fedor', question: questions[1] }, { title: 'Vasiliy', correct: true, question: questions[1] }, 
  { title: 'The weather is fine', correct: true, question: questions[2] }, { title: 'The weather not fine', question: questions[2] }, 
  { title: 'I like rain', correct: true, question: questions[3] }, {title: 'I do not like rain', question: questions[3] }, 
  { title: 'OR', question: questions[4] }, { title: 'XOR', correct: true, question: questions[4] }
])

