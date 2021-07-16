# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = HTTParty.get("https://api.jikan.moe/v3/genre/anime/1/1")
new_resp = response.parsed_response

new_resp.each["anime"] do |show|
  Anime.new(title: show["title"], episodes: show["episodes"], url: show["url"], image_url: show["image_url"], description: show["synopsis"], genre: "Action")
end
