class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  validates :name, :artist, presence: true

  # before_destroy :puts_hello
  #
  # def puts_hello
  #   puts 'Hello'
  # end

  # def genre_ids=(genre_ids)
  #   genre_ids.each do |genre_id|
  #     genre = Genre.find(genre_id.to_i)
  #     self.genres << genre
  #   end
  # end

end
