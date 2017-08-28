class Api::V1::GenresController < ApplicationController
  def index
    all_genres = Album.select(:genre).distinct
    mapped = all_genres.flat_map { |item| [[item.genre, Album.where(genre: item.genre).count]]}
    @genres = mapped.sort_by { |genre| genre[1] }.reverse
  end

end