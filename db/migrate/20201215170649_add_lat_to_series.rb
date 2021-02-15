# frozen_string_literal: true

class AddLatToSeries < ActiveRecord::Migration[6.0]
  def change
    add_column :series, :latitude, :decimal
    add_column :series, :longitude, :decimal
  end
end
