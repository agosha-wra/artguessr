class AddLocationToArts < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :latitude, :float
    add_column :arts, :longitude, :float
  end
end
