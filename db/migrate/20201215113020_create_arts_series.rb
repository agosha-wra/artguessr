class CreateArtsSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :arts_series do |t|
      t.references :art, null: false, foreign_key: true
      t.references :serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
