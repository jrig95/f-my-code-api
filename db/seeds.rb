# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

stories = [
      {title: 'fuckin hell', body:'lorem ipsum dolar'},
      {title: 'fuckin hell mate', body:'lorem ipsum dolar hello mate aaaa'},
      {title: 'fuckin hell bro', body:'lorem ipsum dolar i want to eat chicken'}
    ]

stories.each do |story|
    story = Story.create(title: story[:title], body: story[:body])
    puts "story created #{story.title}"
end