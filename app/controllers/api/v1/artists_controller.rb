class Api::V1::ArtistsController < ApplicationController
  def index
    @artists = Album.select(:artist).distinct.order("artist")
  end

  def show
    @albums = Album.where(artist:params[:artist])
  end

  private
    def album_params
      params.require(:album).permit(:title, :artist, :genre, :year)
    end

end