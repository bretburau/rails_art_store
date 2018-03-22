class PiecesCategory < ApplicationRecord
  belongs_to :pieces
  belongs_to :categories
end
