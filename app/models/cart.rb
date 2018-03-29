class Cart < ApplicationRecord
  has_many :line_items
  has_many :pieces, through: :line_items
  belongs_to :user

  def add_item(new_item_id) ##TODO add quantity to orderiing?
    item_in_cart = self.line_items.find_by(item_id: new_item_id)
    if item_in_cart
      self.item_in_cart.quantity += 1
      item_in_cart.save
      self.save
    else
      self.line_items.build(item_id: new_item_id, quantity: 1)
    end
  end
end
