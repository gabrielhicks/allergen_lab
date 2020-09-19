RecipeIngredient.destroy_all
UserIngredient.destroy_all
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

jake = User.create(name: "Jake")
tammy = User.create(name: "Tammy")

steak = Recipe.create(name: "Steak", user_id: jake.id)
salad = Recipe.create(name: "salad", user_id: tammy.id)

pb_soup = Recipe.create(name: "Peanut Butter Soup", user: jake)

pb = Ingredient.create(name: "peanut butter")
water = Ingredient.create(name: "water")

RecipeIngredient.create(recipe_id: steak.id, ingredient_id: water.id )
RecipeIngredient.create(recipe: pb_soup, ingredient: pb )

UserIngredient.create(user: tammy, ingredient: pb)