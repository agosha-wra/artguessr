# frozen_string_literal: true

class AddLatlngToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :latitude, :decimal
    add_column :responses, :longitude, :decimal
  end
end
