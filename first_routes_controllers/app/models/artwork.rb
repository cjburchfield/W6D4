class Artwork < ApplicationRecord
    validates: :img_url, :artist_id, presence: true, uniqueness: true
    validates: :title, presence: true uniqueness: { scope: :artist_id,
    message: "this title can only be used once per artist" }

    belongs_to :artist,
        primary_key: :id,
        class_name: :User

end