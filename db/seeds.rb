# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create([{ title: 'How do I do?' }, \
   { title: 'What is my name?'}, { title: 'Is the weather fine?' }, \
   { title: 'Do I like rain?' }, { title: '^ is ?' }])

Category.create([{title: 'About me', question_id: 1 }, \
  { title: 'About me', question_id: 2 }, { title: 'About weather', question_id: 3 }, \
  { title: 'About weather', question_id: 4 }, { title: 'About JavaScript', question_id: 5 } ])

Answer.create([{title: 'not fine', question_id: 1 }, {title: 'fine', question_id: 1, correct: 't'}, \
  {title: 'Fedor', question_id: 2}, {title: 'Vasiliy', correct: 't', question_id: 2}, \
  {title: 'The weather is fine', correct: 't', question_id: 3}, {title: 'The weather not fine', question_id: 3}, \
  {title: 'I like rain', correct: 't', question_id: 4}, {title: 'I do not like rain', question_id: 4}, \
  {title: 'OR', question_id: 5}, {title: 'XOR', correct: 't', question_id: 5}])


Test.create([{title: 'Vasiliy', category_id: 1}, {title: 'Vasiliy', category_id: 2}, \
  {title: 'Weather', category_id: 3}, {title: 'Weather', category_id: 4}, \
  {title: 'JavaScript', category_id: 5}])

User.create([{name: 'Vasiliy', test_id: 1}, {name: 'Vasiliy', test_id: 2}, \
  {name: 'Fedor', test_id: 3}, {name: 'Fedor', test_id: 4}, \
  {name: 'Jack', test_id: 5}])
