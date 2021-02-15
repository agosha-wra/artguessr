# frozen_string_literal: true

class AddSeriesToResponses < ActiveRecord::Migration[6.0]
  def change
    add_reference :responses, :serie, null: false, foreign_key: true
  end
end
