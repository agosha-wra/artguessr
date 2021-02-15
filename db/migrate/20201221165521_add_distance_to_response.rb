# frozen_string_literal: true

class AddDistanceToResponse < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :distance, :float
  end
end
