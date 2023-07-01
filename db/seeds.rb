# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Adjuster.find_or_create_by(name: 'Pickles') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Ketchup') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Mustard') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Onions') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Mayo') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Lettuce') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Tomato') do |adjuster|
    adjuster.price = 0.40
  end
  
  Adjuster.find_or_create_by(name: 'Bacon') do |adjuster|
    adjuster.price = 0.80
  end
  
  Adjuster.find_or_create_by(name: 'Mushrooms') do |adjuster|
    adjuster.price = 0.60
  end
  
  Adjuster.find_or_create_by(name: 'Grilled Onions') do |adjuster|
    adjuster.price = 0.10
  end
  
  Adjuster.find_or_create_by(name: 'Fries') do |adjuster|
    adjuster.price = 0.20
  end
  
  Adjuster.find_or_create_by(name: 'BBQ Sauce') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Hot Sauce') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Well Done') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'No Seasoning') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'No Bun') do |adjuster|
    adjuster.price = 0.00
  end
  
  Adjuster.find_or_create_by(name: 'Gluten Free Bun') do |adjuster|
    adjuster.price = 2.00
  end