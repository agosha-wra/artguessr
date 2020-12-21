class AddZoomToSeries < ActiveRecord::Migration[6.0]
  def change
    add_column :series, :zoom, :decimal
  end
end
