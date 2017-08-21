class Api::V1::AlbumsController < ApplicationController
  def index
    render json: Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to api_v1_albums_path(@album)
    else
      @errors = @album.errors.full_messages
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to api_v1_album_path(@album)
    else  
      @errors = @album.errors.full_messages
      render :edit
    end
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to api_v1_albums_path
  end

  private
    def album_params
      params.require(:album).permit(:title, :artist, :genre, :year)
    end

end