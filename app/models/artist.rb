class Artist < User
  has_many :pieces
  has_many :categories, through: :pieces
end
