class AddPieceIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :piece_id, :integer #TODO Do I need this line?
  end
end
