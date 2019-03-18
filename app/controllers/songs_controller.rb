class SongsController < ApplicationController

  def new
    @song = Song.new
    render :new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
    @genre = Genre.find_by(id: @song.genre_id)
    @artist = Artist.find_by(id: @song.artist_id)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
