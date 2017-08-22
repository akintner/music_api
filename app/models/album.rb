class Album < ApplicationRecord

  def self.most_albums_by_year(year)
    count_by_year = Album.select(:year).order("year")
    num = count_by_year.where(year: year.to_s).count
    num
  end

end
