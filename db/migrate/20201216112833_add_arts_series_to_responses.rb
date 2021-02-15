# frozen_string_literal: true

class AddArtsSeriesToResponses < ActiveRecord::Migration[6.0]
  def change
    add_reference :responses, :arts_serie, null: false, foreign_key: true
  end
end
