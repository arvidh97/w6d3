class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false  
      t.bigint :artist_id, null:false 
      t.text :image_url, null:false, uniqueness: true 
      t.timestamps
    end
      add_index :artworks, :artist_id
      add_foreign_key :artworks, :users, column: :artist_id
  end
end
