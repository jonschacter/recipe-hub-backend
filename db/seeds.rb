# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jon = User.create(username: "jschacter", password: "password")

dinner = Category.create(name: "Dinner")
dinner.user = jon
dinner.save

korean_steak = Recipe.create(name: "Grilled Korean Style Strip Steak")
korean_steak.category = dinner
korean_steak.save

step_1 = Step.create(number: 1, description: "Combine all ingredients, except steak, lime, and cilantro, in a bowl, using a whisk.")
step_1.recipe = korean_steak
step_1.save
step_2 = Step.create(number: 2, description: "Add beef and cover the bowl with plastic wrap. Let marinate no more than 30 minutes.")
step_2.recipe = korean_steak
step_2.save
step_3 = Step.create(number: 3, description: "Preheat a grill to medium high.")
step_3.recipe = korean_steak
step_3.save
step_4 = Step.create(number: 4, description: "Remove meat from marinade and drizzle it with olive oil.")
step_4.recipe = korean_steak
step_4.save
step_5 = Step.create(number: 5, description: "On the grill, cook meat for one to two minutes per side; then remove.")
step_5.recipe = korean_steak
step_5.save
step_6 = Step.create(number: 6, description: "Serve immediately with Lime, Cilantro, and optional Sriracha sauce.")
step_6.recipe = korean_steak
step_6.save

steak = Ingredient.create(name: "strip steak", quantity: "4 slices, 1/3in thick")
steak.recipe = korean_steak
steak.save
ginger = Ingredient.create(name: "ginger, grated", quantity: "3 Tbsp")
ginger.recipe = korean_steak
ginger.save
sugar = Ingredient.create(name: "brown sugar", quantity: "3 Tbsp")
sugar.recipe = korean_steak
sugar.save
sriracha = Ingredient.create(name: "sriracha", quantity: "2 tsp")
sriracha.recipe = korean_steak
sriracha.save
soy_sauce = Ingredient.create(name: "soy sauce", quantity: "1/3 cup")
soy_sauce.recipe = korean_steak
soy_sauce.save
sesame = Ingredient.create(name: "sesame oil", quantity: "1 Tbsp")
sesame.recipe = korean_steak
sesame.save
garlic = Ingredient.create(name: "garlic, minced", quantity: "1 Tbsp")
garlic.recipe = korean_steak
garlic.save
limes = Ingredient.create(name: "limes, wedged", quantity: "2")
limes.recipe = korean_steak
limes.save
cilantro = Ingredient.create(name: "cilantro", quantity: "1/2 bunch")
cilantro.recipe = korean_steak
cilantro.save
