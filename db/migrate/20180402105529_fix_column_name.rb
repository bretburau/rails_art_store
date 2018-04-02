class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :line_items, :item_id, :piece_id
  end
end
