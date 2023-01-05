# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying previous landmarks"
Landmark.destroy_all

Landmark.create!([{ name: "Ginsan Onsen", address: "Yamagata, Japan", comment: "great" }])
Landmark.create!([{ name: "Tokyo Tower", address: "Tokyo, Japan", comment: "great" }])
Landmark.create!([{ name: "Golden Pavilion", address: "Kyoto, Japan", comment: "great" }])
Landmark.create!([{ name: "Dotonburi", address: "Osaka, Japan", comment: "great" }])
