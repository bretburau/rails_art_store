class Category < ApplicationRecord
  has_many :pieces_categories
  has_many :pieces, through: :pieces_categories
end
