# Create dummy data for users
User.create(name: 'John Doe', email: 'john@example.com', password: 'password', confirmed_at: Time.now)
User.create(name: 'Jane Smith', email: 'jane@example.com', password: 'password', confirmed_at: Time.now)

# Create dummy data for foods
Food.create(name: 'Apple', measurement_unit: 'piece', price: 1.5, quantity: 10, user_id: 1)
Food.create(name: 'Banana', measurement_unit: 'piece', price: 0.75, quantity: 20, user_id: 2)
Food.create(name: 'Chicken', measurement_unit: 'lb', price: 5.99, quantity: 5, user_id: 1)
Food.create(name: 'Broccoli', measurement_unit: 'lb', price: 2.25, quantity: 8, user_id: 2)

# Create dummy data for recipes
Recipe.create(name: 'Apple Pie', preparation_time: 30, cooking_time: 45, description: 'Delicious apple pie recipe', public: true, user_id: 1)
Recipe.create(name: 'Banana Smoothie', preparation_time: 10, cooking_time: 0, description: 'Healthy banana smoothie', public: true, user_id: 2)
Recipe.create(name: 'Grilled Chicken', preparation_time: 15, cooking_time: 20, description: 'Tasty grilled chicken recipe', public: true, user_id: 1)
Recipe.create(name: 'Broccoli Stir-Fry', preparation_time: 20, cooking_time: 15, description: 'Quick and easy broccoli stir-fry', public: true, user_id: 2)

# Create dummy data for recipe_foods associations
RecipeFood.create(quantity: 4, recipe_id: 1, food_id: 1)  # Apple Pie requires 4 Apples
RecipeFood.create(quantity: 2, recipe_id: 2, food_id: 2)  # Banana Smoothie requires 2 Bananas
RecipeFood.create(quantity: 2, recipe_id: 3, food_id: 3)  # Grilled Chicken requires 2 lb of Chicken
RecipeFood.create(quantity: 3, recipe_id: 4, food_id: 4)  # Broccoli Stir-Fry requires 3 lb of Broccoli
