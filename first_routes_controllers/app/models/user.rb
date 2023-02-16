class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        inverse_of: :artist,
        class_name: :Artwork,
        dependent: :destroy
end