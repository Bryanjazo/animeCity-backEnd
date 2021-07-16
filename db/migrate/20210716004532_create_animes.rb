class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :episodes
      t.string :url
      t.string :image_url
      t.string :description
      t.string :genre
      t.timestamps
    end
  end
end
