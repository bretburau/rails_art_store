class AddArtistIdToPieces < ActiveRecord::Migration[5.1]
  def change
    add_column :pieces, :artist_id, :integer
  end
end
