class SongsController < ApplicationController

  def index
    @songs = Song.all
    render :index
  end

  def new
    @song = Song.new
    render :new
  end

  def create
    @song = Song.new(song_param)
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    render :show
  end

  def edit
    @song = Song.find(params[:id])
    render :edit
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_param)
    redirect_to song_path(@song)
  end

  private

  def song_param
  params.require(:song).permit(:name, :bio)
  end

end
