# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        inverse_of: :artist,
        class_name: :Artwork,
        dependent: :destroy

    # this is the artworks user has had shared with them
    has_many :views,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :ArtworkShares

    #this is the artworks that have been shared with this user
    has_many :shared_artworks
    through :views,
    source: :artwork

end
