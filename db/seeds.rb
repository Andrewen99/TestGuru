# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ title: "frontend" }, { title: "backend" },
                              { title: "machine learning" }, { title: "data science" }])
users = User.create([{ name: "Andrew", email: "andrew@ex.com", password: "pass" },
                     { name: "Alexandr", email: "alex@ex.com", password: "pass" },
                     { name: "Vladislav", email: "vlad@ex.com", password: "pass" }])
tests = Test.create([{ title: "ruby", level: 1, category_id: 1, author_id: 1 },
                     { title: "JavaScrypt", level: 2, category_id: 2, author_id: 2 },
                     { title: "Python", level: 3, category_id: 4, author_id: 2 }])
questions = Question.create([{ body: "Do you like Ruby?", test_id: 1 }])
answers = Answer.create([{ body: "of course!", correct: true, question_id: 1 },
                         { body: "no", correct: false, question_id: 1 }])

results = Result.create([{ score: 2, user_id: 1, test_id: 1 }, { score: 4, user_id: 1, test_id: 2 },
                         { score: 5, user_id: 2, test_id: 2 }, { score: 7, user_id: 2, test_id: 3 }])
# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
