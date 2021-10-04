# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ user_name: 'Admin', email: 'admin@gmail.com', password: 'password', password_confirmation: 'password' },
                    { user_name: 'Sinan', email: 'sinan@gmail.com', password: 'password', password_confirmation: 'password' },
                    { user_name: 'Semih', email: 'semih@gmail.com', password: 'password', password_confirmation: 'password' }
                    ])
games = Game.create([{ title:"Game of thrones"}, {title: "Hot Game"}, {title:"Super Game"}])


