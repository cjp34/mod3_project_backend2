# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

user1 = User.create(name: "Carl")
user2 = User.create(name: "Matt")
user3 = User.create(name: "Sunny")
user4 = User.create(name: "Andy")
user5 = User.create(name: "Sal")
user6 = User.create(name: "Taylor")
user7 = User.create(name: "Dani")
user8 = User.create(name: "Emily")

recipe1 = Recipe.create(name: "Toast", user_id: user1.id, hours: 0, minutes: 5, feeds: 1, directions: "Place bread in the toaster and toast to desired doneness. Then take out toasted bread and spred favorite jelly, jame, or just butter.")
recipe2 = Recipe.create(name: "Salad", user_id: user1.id, hours: 0, minutes: 5, feeds: 1, directions: "Make a salad.")
recipe3 = Recipe.create(name: "Pasta", user_id: user2.id, hours: 0, minutes: 10, feeds: 2, directions: "Make the pasta.")

ingredient1 = Ingredient.create(name: "Break", vegetarian: true, vegan: true, glutenfree: false)
ingredient2 = Ingredient.create(name: "Lettuce", vegetarian: true, vegan: true, glutenfree: true)
ingredient3 = Ingredient.create(name: "Casear Dressing", vegetarian: true, vegan: false, glutenfree: true)
ingredient4 = Ingredient.create(name: "Uncooked Pasta", vegetarian: true, vegan: false, glutenfree: false)
ingredient5 = Ingredient.create(name: "Pasta Sauce", vegetarian: true, vegan: true, glutenfree: true)

recipe_ingredient1 = RecipeIngredient.create(ingredient_id: ingredient1.id, recipe_id: recipe1.id, amount: 1, measurement: "Slice")
recipe_ingredient2 = RecipeIngredient.create(ingredient_id: ingredient2.id, recipe_id: recipe2.id, amount: 1, measurement: "Slice")
recipe_ingredient3 = RecipeIngredient.create(ingredient_id: ingredient3.id, recipe_id: recipe2.id, amount: 1, measurement: "Slice")
recipe_ingredient4 = RecipeIngredient.create(ingredient_id: ingredient1.id, recipe_id: recipe3.id, amount: 1, measurement: "Slice")
recipe_ingredient5 = RecipeIngredient.create(ingredient_id: ingredient1.id, recipe_id: recipe3.id, amount: 1, measurement: "Slice")
