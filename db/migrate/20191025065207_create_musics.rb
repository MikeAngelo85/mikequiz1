class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :artist
      t.string :song
      t.string :genre
      t.text :description
      t.timestamps
    end
  end
end
