class Api::V1::YearsController < ApplicationController
  def index
    @years = Album.select(:year).distinct.order("year")
  end

  private
    def album_params
      params.require(:album).permit(:title, :artist, :genre, :year)
    end

end