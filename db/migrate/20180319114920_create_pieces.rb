class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :artist_id
      t.boolean :prints_available?
      t.boolean :original_available?
      t.timestamps
    end
  end
end
