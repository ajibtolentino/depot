# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.delete_all
#...
Product.create!(title: 'Design and Build Great Web APIs',
  description:
    %{<p>
      <em>Cetaphil</em>
      Cetaphil is a skincare brand that has been recommended 
      by dermatologists for over 70 years, and is today used 
      by millions of women with sensitive skin from all over
       the world. The original product, called Cetaphil 
       Cleansing Lotion, was invented by a pharmacist in 
       1947 specifically for dermatological needs.
      </p>},
  image_url: 'cetaphil.jpeg',
price: 24.95) #...
