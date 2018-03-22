class Piece < ApplicationRecord
  validates :name, presence: true
  has_many :pieces_categories
  has_many :categories, through: :pieces_categories
  belongs_to :artist
  
end
