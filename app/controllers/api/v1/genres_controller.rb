class Api::V1::GenresController < ApplicationController
  def index
    @genres = Album.select(:genre).distinct.order("genre")
  end

end