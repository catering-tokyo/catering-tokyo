class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.references :shop, foreign_key: true
      t.references :shop_genre, foreign_key: true

      t.timestamps
    end
  end
end
