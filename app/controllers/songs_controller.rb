class SongsController < ApplicationController

  def index
    @songs = Song.all
    render :index
  end

  def show
    @song = Song.find(params[:id])
    @genre_id = @song.genre.id
    @artist_id = @song.artist.id
    render :show
  end

  def new
    @song = Song.new
    @artist_options = Artist.all.map{ |a| [a.name, a.id]}
    @genre_options = Genre.all.map{|g| [g.name, g.id]}
    render :new
  end

  def create
    @song = Song.create(song_params)
    redirect_to @song
  end

  def edit
    @song = Song.find(params[:id])
    render :edit
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to @song
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
