class Piece < ApplicationRecord
  validates :name, presence: true
  has_many :categories
  belongs_to :artist
  
end
