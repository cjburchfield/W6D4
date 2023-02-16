# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create!([{ username: "Utamaro" }, { username: "Watanabe Kazan" }, { username: "Kano Eitoku" }])

artworks = Artwork.create!([ { artist_id: 3, title: "Coquettish type", img_url: "https://artsandculture.google.com/asset/ten-physiognomic-types-of-women-coquettish-type-kitagawa-utamaro/-QE0ONJjDJlDIA" },
 { artist_id: 3, title: "Print", img_url: "https://artsandculture.google.com/asset/print-kitagawa-utamaro/GQEDMyzO20XXxg"}, 
{artist_id: 4, title: "Portrait", img_url: "https://artsandculture.google.com/asset/portrait-of-sato-issai-age-50-watanabe-kazan/GAGl82jC0YNkgQ"},
 { artist_id: 5, title: "Cypress Trees", img_url: "https://artsandculture.google.com/asset/cypress-trees-kano-eitoku/WgG8VxnsSPYalQ"}])


 artwork_shares = ArtworkShare.create! ([ { artwork_id: 1, viewer_id: 1 }, { artwork_id: 1, viewer_id: 2 }, { artwork_id: 2, viewer_id: 1 },
{ artwork_id: 3 , viewer_id: 2 }, { artwork_id: 4 , viewer_id: 1 }, 
{ artwork_id: 4 , viewer_id: 2 }, { artwork_id: 5 , viewer_id: 2 }])

