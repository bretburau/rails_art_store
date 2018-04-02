class Cart < ApplicationRecord
  has_many :line_items
  has_many :pieces, through: :line_items
  belongs_to :user

  def add_item(new_item_id) ##TODO add quantity to orderiing?
    item_in_cart = self.line_items.find_by(item_id: new_item_id)
    if item_in_cart
       item_in_cart.quantity += 1
      item_in_cart.save
      self.save
    else
      item = self.line_items.build(piece_id: new_item_id, quantity: 1)
      item.save
      self.save
    end
  end

  def total
    final_total = 0
    self.line_items.each do |line_item|
      piece = Piece.find(line_item.item_id)
      final_total += piece.price * line_item.quantity
    end
  end
end
