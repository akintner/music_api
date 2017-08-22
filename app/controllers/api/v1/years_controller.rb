class Api::V1::YearsController < ApplicationController
  def index
    @years = Album.select(:year).distinct.order("year")
  end

end