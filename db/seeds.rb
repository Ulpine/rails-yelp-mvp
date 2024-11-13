# 1. Clean the database 🗑️
puts 'Cleaning database...'
Review.destroy_all
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts 'Creating 3 restaurants...'
Restaurant.create!(name: 'Le grill', address: 'Dinard', category: Restaurant.random_category)
puts 'Created Dishoom'
Restaurant.create!(name: 'Burger King', address: 'Saint Malo', category: Restaurant.random_category)
puts 'Created Dishoom'
Restaurant.create!(name: 'Mono', address: 'Bruz', category: Restaurant.random_category)

Restaurant.create!(name: 'Royal K', address: 'Saint Erblon', category: Restaurant.random_category)

Restaurant.create!(name: 'KFC', address: 'Rennes', category: Restaurant.random_category)
puts 'Created Pizza East'

# puts 'Creating Reviews...'
# Review.create(content: 'Great restau !!', restaurant: Restaurant.first)
# Review.create(content: 'Great restau de ouf !!', restaurant: Restaurant.last)
# Review.create(content: 'Super fast food !!', restaurant: Restaurant.find_by(name: 'Burger King'))
# Review.create(content: 'Super fast food !!', restaurant: Restaurant.find_by(name: 'Burger King'))
# Review.create(content: 'Super fast food !!', restaurant: Restaurant.find_by(name: 'Burger King'))

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants and #{Review.count} reviews."
