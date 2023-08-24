# Faker gem
require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all Teams and Players"
Player.destroy_all
Team.destroy_all

# Teams
eagles = Team.create(name: "Eagles", ladder_position: 1)
demons = Team.create(name: "Demons", ladder_position: 2)
swans = Team.create(name: "Swans", ladder_position: 1)
tigers = Team.create(name: "Tigers", ladder_position: 2)
cats = Team.create(name: "Cats", ladder_position: 1)
suns = Team.create(name: "Suns", ladder_position: 2)
magpies = Team.create(name: "Magpies", ladder_position: 1)
kangaroos = Team.create(name: "Kangaroos", ladder_position: 2)
puts 'teams created'

# Players
18.times {demons.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {eagles.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {swans.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {tigers.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {cats.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {suns.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {magpies.players.create(name: Faker::Name.name, ranking: rand(50..100))}
18.times {kangaroos.players.create(name: Faker::Name.name, ranking: rand(50..100))}

puts 'players created'
