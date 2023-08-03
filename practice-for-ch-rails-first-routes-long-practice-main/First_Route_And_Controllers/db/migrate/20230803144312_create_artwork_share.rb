class CreateArtworkShare < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares do |t|
      t.references :viewer, foreign_key: {to_table: :users}
      t.references :artwork, null: false, foreign_key: {to_table: :artworks}
      t.timestamps
    end
    add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true
  end
end
