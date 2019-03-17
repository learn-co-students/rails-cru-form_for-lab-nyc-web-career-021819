class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.new(artist_param)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def edit
    @artist = Artist.find(params[:id])
    render :edit
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_param)
    redirect_to artist_path(@artist)
  end

  private

  def artist_param
  params.require(:artist).permit(:name, :bio)
  end

end
