class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :piece
  scope :by_artist, ->(artist) { where(artist_id: artist.id) }
end
