class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :piece

  def artist?
    @piece= Piece.find(self.piece_id)
    Artist.find(@piece.artist_id)
  end
end
