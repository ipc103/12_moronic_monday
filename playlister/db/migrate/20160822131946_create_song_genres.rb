class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.belongs_to :song, index: true, foreign_key: true
      t.belongs_to :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
