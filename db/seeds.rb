# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database.."
Recipe.destroy_all

puts "Creating recipes....."
Recipe.create(
  name: "Tex-Mex Burger",
  description: "A jazzy way to spice up the boring basic burger that will tantalize your taste buds!"
  image_url: "https://www.allrecipes.com/thmb/rlAKZLHPzoSHUu3ANHkrUIJhCrI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/379901-06eae14ee9ad42dbae9d3bc5dcfec2e9.jpg"
  rating: 7.5
)

Recipe.create!(
  name: "Tandoori Chicken"
  description: "Try this authentic tandoori chicken that's marinated in yogurt and spices, then cooked on the grill!"
  image_url: "https://www.allrecipes.com/thmb/flNJI1vRxYEgckp_mXkQTS6yG1w=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-4x3-3035-205e98c80b2f4275b5bd010c396d9149.jpg"
  rating: 9.9
)


Recipe.create!(
  name: "Chicken Fried Rice"
  description: "This chicken fried rice with soy sauce, and shredded egg stir-fried together."
  image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2023%2F01%2F31%2F16954-chineese-chicken-fried-rice-ii-ddmfs-3X4-0240.jpg&q=60&c=sc&poi=auto&orient=true&h=512"
  rating: 6.2
)


Recipe.create!(
  name: "Real Lasagna Soup"
  description: "This incredible lasagna soup tastes exactly like a really good lasagna but is a very rich, very meaty tomato soup with tender noodles and ricotta cheese."
  image_url: "https://www.allrecipes.com/thmb/_VcL4JBWuwqC_xlTeRXkKnqmTGQ=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/7967799_Real-Lasagna-Soup_Chef-John_4x3-c7d7aac67f114a4a801e0363b99437bc.jpg"
  rating: 5.7
)

puts "Done! #{Recipe.all.count} recipes created"
