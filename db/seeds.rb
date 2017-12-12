# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chef = Chef.create!(chefname: 'Daisy', email: 'daisy@example.com', password: 'jjoJijO8u*O8o**18j28*&(*&@#^#hj89e*@J)', picture: Rails.root.join('app/assets/images/daisy.jpg').open)
recipes = chef.recipes.create!([{ name: 'Pesto', summary: "Very delicious Pesto recipe!", description: "This will teach you how to make pesto", picture: Rails.root.join('app/assets/images/pesto.jpg').open}, { name: 'Chicken', summary: "gosh darn delicious", description: "This will teach you how to make chicken", picture: Rails.root.join('app/assets/images/chicken.jpg').open }])
