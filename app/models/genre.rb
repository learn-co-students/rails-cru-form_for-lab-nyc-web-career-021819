class Genre < ActiveRecord::Base
  has_many :songs

  def self.get_genre_array
    Genre.all.map do |genre|
      genre.name
    end.uniq
  end

end
