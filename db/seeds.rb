# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.destroy_all

Score.create(name: 'Anh', player_score: '1000')
Score.create(name: 'ZAnh', player_score: '3000')
Score.create(name: 'Dad', player_score: '1050')
Score.create(name: 'Bugs', player_score: '2000')
Score.create(name: 'Rika', player_score: '3000')
Score.create(name: 'Jebuiz', player_score: '4000')
