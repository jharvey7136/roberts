class AddPositionToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :position, :integer
  end
end
