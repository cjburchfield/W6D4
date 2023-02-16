# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Artwork.destroy_all
User.destroy_all
ArtworkShare.destroy_all
#create users individually, more dynamic to do dan.id

#Seeding Users#
dan = User.create!(
    username: "cooldan"
)

jamie = User.create!(
    username: "Jamie"
)

utamaro = User.create!(
    username: "Utamaro"
)

watanabe_kazan = User.create!(
    username: "Watanabe Kazan"
)

kano_eitoku = User.create!(
    username: "Kano Eitoku"
)

#Seeding Artworks#

coquettish = Artwork.create!(
    artist_id: utamaro.id,
    title: "Coquettish",
    img_url: "https://artsandculture.google.com/asset/ten-physiognomic-types-of-women-coquettish-type-kitagawa-utamaro/-QE0ONJjDJlDIA"
)

woodcut = Artwork.create!(
    artist_id: utamaro.id,
    title: "Woodcut",
    img_url: "https://artsandculture.google.com/asset/print-kitagawa-utamaro/GQEDMyzO20XXxg"
)

portrait = Artwork.create!(
    artist_id: watanabe_kazan.id,
    title: "Portrait",
    img_url: "https://artsandculture.google.com/asset/portrait-of-sato-issai-age-50-watanabe-kazan/GAGl82jC0YNkgQ"
)

 cypress_tree = Artwork.create!(
    artist_id: utamaro.id,
    title: "Cypress Tree",
    img_url: "https://artsandculture.google.com/asset/cypress-trees-kano-eitoku/WgG8VxnsSPYalQ"
)

#Seeding ArtworkShares#

 artwork_shares = ArtworkShare.create! ([ { artwork_id: coquettish.id, viewer_id: dan.id }, { artwork_id: coquettish.id, viewer_id: jamie.id }, { artwork_id: woodcut.id, viewer_id: dan.id },
{ artwork_id: portrait.id , viewer_id: jamie.id }, { artwork_id: portrait.id , viewer_id: dan.id }, 
{ artwork_id: cypress_tree.id , viewer_id: dan.id }, { artwork_id: cypress_tree.id , viewer_id: jamie.id }])

