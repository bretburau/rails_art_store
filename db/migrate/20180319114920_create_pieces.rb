class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :user_id
      t.boolean :prints_available?, default: false
      t.boolean :original_available?, default: false
      t.timestamps
    end
  end
end
