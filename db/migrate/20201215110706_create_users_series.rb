# frozen_string_literal: true

class CreateUsersSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :users_series do |t|
      t.float :score
      t.references :user, null: false, foreign_key: true
      t.references :serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
