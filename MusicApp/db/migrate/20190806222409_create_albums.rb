class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|

      t.string :title, null: false
      t.integer :year, null: false
      t.integer :band_id, null: false
      t.boolean :live, default: false, null: false

      t.index [:band_id, :title], unique: true

      t.timestamps
    end
  end
end
