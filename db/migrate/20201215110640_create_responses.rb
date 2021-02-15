# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :art, null: false, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
