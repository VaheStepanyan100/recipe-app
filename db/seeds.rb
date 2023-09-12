# Dummy data for the "users" table
User.create(
  name: "John Doe",
  email: "john@example.com",
  encrypted_password: "password123",
  created_at: DateTime.now,
  updated_at: DateTime.now
)

User.create(
  name: "Jane Smith",
  email: "jane@example.com",
  encrypted_password: "secret456",
  created_at: DateTime.now,
  updated_at: DateTime.now
)

# Dummy data for the "foods" table
Food.create(
  name: "Apples",
  measurement_unit: "pieces",
  price: 1.99,
  quantity: 10.5,
  user_id: 1, # User John Doe
  created_at: DateTime.now,
  updated_at: DateTime.now
)

Food.create(
  name: "Chicken",
  measurement_unit: "lbs",
  price: 5.99,
  quantity: 2.5,
  user_id: 2, # User Jane Smith
  created_at: DateTime.now,
  updated_at: DateTime.now
)

# Dummy data for the "recipes" table
Recipe.create(
  name: "Apple Pie",
  preparation_time: 30,
  cooking_time: 60,
  description: "Delicious homemade apple pie recipe.",
  public: true,
  user_id: 1, # User John Doe
  created_at: DateTime.now,
  updated_at: DateTime.now
)

Recipe.create(
  name: "Chicken Stir-Fry",
  preparation_time: 20,
  cooking_time: 15,
  description: "Quick and easy chicken stir-fry recipe.",
  public: true,
  user_id: 2, # User Jane Smith
  created_at: DateTime.now,
  updated_at: DateTime.now
)

# Dummy data for the "recipe_foods" table
RecipeFood.create(
  quantity: 3.0,
  recipe_id: 1, # Apple Pie
  food_id: 1,   # Apples
  created_at: DateTime.now,
  updated_at: DateTime.now
)

RecipeFood.create(
  quantity: 1.5,
  recipe_id: 2, # Chicken Stir-Fry
  food_id: 2,   # Chicken
  created_at: DateTime.now,
  updated_at: DateTime.now
)
