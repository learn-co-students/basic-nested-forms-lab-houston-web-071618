# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create(title:"pizza")
Recipe.create(title:"spaghetti")
Recipe.create(title:"hamburger")
Recipe.create(title:"fried rice")

Ingredient.create(name: "cheese", quantity: 1, recipe_id: 1)
Ingredient.create(name: "sauce", quantity: 2, recipe_id: 1)
Ingredient.create(name: "bread", quantity: 1, recipe_id: 2)
Ingredient.create(name: "pasta", quantity: 2, recipe_id: 2)
Ingredient.create(name: "beef patty", quantity: 1, recipe_id: 3)
Ingredient.create(name: "onion", quantity: 5, recipe_id: 3)
Ingredient.create(name: "rice", quantity: 500, recipe_id: 4)
Ingredient.create(name: "soy sauce", quantity: 1, recipe_id: 4)
