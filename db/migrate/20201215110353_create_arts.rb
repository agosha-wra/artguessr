# frozen_string_literal: true

class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :author
      t.text :location_story

      t.timestamps
    end
  end
end
