class ArtworkShare < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: true, uniqueness: true
    validates :artwork_id, presence: true, uniqueness: {scope: :viewer_id,
    message: "User has already seen this"}

        belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

        belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User

    
end