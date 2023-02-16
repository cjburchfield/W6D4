class CreateArtwork < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.references :artist, foreign_key: {to_table: :users}, null: false
      t.string :title, null: false
      t.string :img_url, null: false
      t.index [:artist_id, :title], unique: true
      t.index :img_url, unique: true

      t.timestamps
    end
  end
end
