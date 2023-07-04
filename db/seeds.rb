# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
adjusters = [
  { name: 'Pickles', price: 0.00 },
  { name: 'Ketchup', price: 0.00 },
  { name: 'Mustard', price: 0.00 },
  { name: 'Onions', price: 0.00 },
  { name: 'Mayo', price: 0.00 },
  { name: 'Lettuce', price: 0.00 },
  { name: 'Tomato', price: 0.40 },
  { name: 'Bacon', price: 0.80 },
  { name: 'Mushrooms', price: 0.60 },
  { name: 'Grilled Onions', price: 0.10 },
  { name: 'Fries', price: 0.20 },
  { name: 'BBQ Sauce', price: 0.00 },
  { name: 'Hot Sauce', price: 0.00 },
  { name: 'Well Done', price: 0.00 },
  { name: 'No Seasoning', price: 0.00 },
  { name: 'No Bun', price: 0.00 },
  { name: 'Gluten Free Bun', price: 2.00 }
]

adjusters.each do |adjuster|
  Adjuster.find_or_create_by(name: adjuster[:name]) do |a|
    a.price = adjuster[:price]
  end
end
