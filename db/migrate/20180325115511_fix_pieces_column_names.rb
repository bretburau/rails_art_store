class FixPiecesColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :pieces, :prints_available?, :prints_available
    rename_column :pieces, :original_available?, :original_available
  end
end
