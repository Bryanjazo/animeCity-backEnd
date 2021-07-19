# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# response = HTTParty.get("https://api.jikan.moe/v3/genre/anime/1/1")
# new_resp = JSON.parse(response.body)
uri = URI("https://api.jikan.moe/v3/genre/anime/5/1")
anime_hash = Net::HTTP.get_response(uri)
anime_array = JSON.parse(anime_hash.body)

anime_array["anime"].each do |show|
  Anime.create(title: show["title"], episodes: show["episodes"], url: show["url"], image_url: show["image_url"], description: show["synopsis"], genre: "Demons")
end
