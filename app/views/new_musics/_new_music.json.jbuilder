json.extract! new_music, :id, :artist, :genre, :song, :description, :created_at, :updated_at
json.url new_music_url(new_music, format: :json)
