# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chef = Chef.create!(chefname: 'Joe', email: 'joe@example.com', password: 'jjoJijO8u*O8o**18j28*&(*&@#^#hj89e*@J)', picture: Rails.root.join('app/assets/images/default.png').open)
recipes = chef.recipes.create!([{ name: 'pesto', summary: "very tasty", description: "This will teach you how to make pesto", picture: Rails.root.join('app/assets/images/pesto.jpg').open}, { name: 'chicken', summary: "gosh darn delicious", description: "This will teach you how to make chicken", picture: Rails.root.join('app/assets/images/chicken.jpg').open }])
