# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  artist_id  :bigint           not null
#  title      :string           not null
#  img_url    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :img_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    validates :title, presence: true, uniqueness: { scope: :artist_id,
    message: "this title can only be used once per artist" }

    def self.artworks_for_user_id(user_id)
        user = User.find(user_id) #this is the user
        return [user.artworks, user.shared_artworks].flatten
    end

    
    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_viewers,
        through: :shares,
        source: :viewer


end
