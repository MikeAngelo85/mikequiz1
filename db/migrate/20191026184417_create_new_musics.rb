class CreateNewMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :new_musics do |t|
      t.string :artist
      t.string :genre
      t.string :song
      t.text :description

      t.timestamps
    end
  end
end
