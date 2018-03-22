class CreatePiecesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces_categories do |t|
      t.integer :piece_id
      t.integer :category_id

      t.timestamps
    end
  end
end
