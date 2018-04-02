class ChangePiecePriceToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :pieces, :price, :float
  end
end
