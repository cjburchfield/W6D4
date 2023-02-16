class RemoveIndexes < ActiveRecord::Migration[7.0]
  def change
    remove_index :artwork_shares, :viewer_id
    remove_index :artworks, :artist_id
  end
end
