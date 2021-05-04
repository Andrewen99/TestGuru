# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([{ title: 'frontend' }, { title: 'backend' },
                               { title: 'machine learning' }, { title: 'data science' }])

users = User.create!([{ name: 'Andrew', email: 'andrew@ex.com', password: 'pass' },
                      { name: 'Alexandr', email: 'alex@ex.com', password: 'pass' },
                      { name: 'Vladislav', email: 'vlad@ex.com', password: 'pass' }])

tests = Test.create!([{ title: 'ruby', level: 1, category: categories[1], author: users[0] },
                      { title: 'JavaScrypt', level: 2, category: categories[0], author: users[1] },
                      { title: 'Java', level: 3, category: categories[1], author: users[0] },
                      { title: 'Python', level: 3, category: categories[2], author: users[1] }])

questions = Question.create!([{ body: 'Do you like Ruby?', test: tests[0] },
                              { body: 'Is Ruby static or dinamic typed language? ', test: tests[0] },
                              { body: 'JVM is', test: tests[0] }])

Answer.create!([{ body: 'of course!', correct: true, question: questions[0] },
                { body: 'no', correct: false, question: questions[0] },
                { body: 'static', correct: false, question: questions[1] },
                { body: 'dinamic', correct: true, question: questions[1] },
                { body: 'Java Valuable Memory', correct: false, question: questions[2] },
                { body: 'Java Virtual Machine', correct: true, question: questions[2] }])

Result.create([{ score: 2, user: users[0], test: tests[0] }, { score: 4, user: users[0], test: tests[1] },
               { score: 5, user: users[1], test: tests[1] }, { score: 7, user: users[1], test: tests[2] }])
# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
