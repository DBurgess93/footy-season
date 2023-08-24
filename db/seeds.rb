# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Teams
eagles = Team.create(name: "Eagles")
demons = Team.create(name: "Demons")

# Players
eagles.players.create(name: "Terry", ranking: 90)
eagles.players.create(name: "Dano", ranking: 80)
eagles.players.create(name: "Frank", ranking: 70)
eagles.players.create(name: "Jim", ranking: 60)
demons.players.create(name: "Gus", ranking: 90)
demons.players.create(name: "Larry", ranking: 80)
demons.players.create(name: "Pete", ranking: 70)
demons.players.create(name: "Bob", ranking: 60)
