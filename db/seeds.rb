# Create users
User.create!(
  name: 'John Doe',
  email: 'john@example.com',
  password: 'password123',  # Add password field
  encrypted_password: 'password123'  # Update the encrypted_password field
)

User.create!(
  name: 'Jane Smith',
  email: 'jane@example.com',
  password: 'password456',  # Add password field
  encrypted_password: 'password456'  # Update the encrypted_password field
)

# Create foods
Food.create!(
  name: 'Apples',
  measurement_unit: 'kg',
  price: 1.99,
  quantity: 5.0,
  user_id: 1
)

Food.create!(
  name: 'Chicken Breast',
  measurement_unit: 'lb',
  price: 3.49,
  quantity: 2.5,
  user_id: 2
)

# Create recipes
Recipe.create!(
  name: 'Apple Pie',
  preparation_time: 30,
  cooking_time: 45,
  description: 'Delicious homemade apple pie.',
  public: true,
  user_id: 1
)

Recipe.create!(
  name: 'Grilled Chicken',
  preparation_time: 15,
  cooking_time: 20,
  description: 'Healthy grilled chicken recipe.',
  public: true,
  user_id: 2
)

# Create recipe_foods
RecipeFood.create!(
  quantity: 3.0,
  recipe_id: 1,
  food_id: 1
)

RecipeFood.create!(
  quantity: 1.5,
  recipe_id: 2,
  food_id: 2
)
