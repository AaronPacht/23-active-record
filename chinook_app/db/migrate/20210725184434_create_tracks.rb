class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.references :album
      t.references :genre
      t.references :media_type
      t.string :name
      t.string :composer
      t.integer :milliseconds
      t.integer :bytes
      t.decimal :unit_price

      t.timestamps
    end

    create_table :playlists_tracks do |t|
      t.belongs_to :playlist
      t.belongs_to :track
    end
  end
end
