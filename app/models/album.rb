class Album < ApplicationRecord

  def self.most_albums_by_year(year)
    count_by_year = Album.select(:year).order("year")
    num = count_by_year.where(year: year.to_s).count
    num
  end
  
  def self.albums_by_genre(genre)
    albums_by_genre = Album.where(genre: genre.to_s)
    ordered = albums_by_genre.order("year")
    ordered_albums = ordered.collect(&:title)
  end

end
