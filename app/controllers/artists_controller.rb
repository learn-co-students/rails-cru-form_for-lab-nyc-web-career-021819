class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    render :new
  end

  def show
    @artist = Artist.find_by(params[:id])
    render :show
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find_by(params[:id])
    render :edit
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end


end
