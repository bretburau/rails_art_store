class Cart < ApplicationRecord
  has_many :line_items
  has_many :pieces, through: :line_items
  belongs_to :user
end
