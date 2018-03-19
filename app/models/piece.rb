class Piece < ApplicationRecord
  validates :name, presence: true
  # has_many :categories TODO
  belongs_to :user
end
