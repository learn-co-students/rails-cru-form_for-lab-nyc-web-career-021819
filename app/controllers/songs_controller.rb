class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(params[:id])
    @genre = @song.genre
    @artist = @song.artist

    render :show
  end

  def create
    @song = Song.create(song_params)
    render :new
  end

  def edit
    @song = Song.find_by(params[:id])
    render :edit
  end

  def update
    @song = Song.update(song_params)
    redirect_to @song
  end

  private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
