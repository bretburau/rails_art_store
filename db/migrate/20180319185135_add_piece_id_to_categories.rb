class AddPieceIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :piece_id, :integer
  end
end
