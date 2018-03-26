class Piece < ApplicationRecord
  validates :name, presence: true
  has_many :pieces_categories
  has_many :categories, through: :pieces_categories
  belongs_to :artist

  def categories=(categories)
    new_category = Category.find_or_create_by(name: categories[:name])
    self.categories << new_category
  end
  
end
