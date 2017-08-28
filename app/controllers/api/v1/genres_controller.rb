class Api::V1::GenresController < ApplicationController
  def index
    all_genres = Album.select(:genre).distinct
    mapped = all_genres.flat_map { |genre| [[genre.genre, Album.where(genre: genre.genre).count]]}
    @genres = mapped.sort_by { |genre| genre[1] }.reverse
  end

end