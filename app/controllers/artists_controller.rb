class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render:index
  end

  def new
    @artist = Artist.new
    render:new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path (@artist)
  end

  def show
    @artist = Artist.find(params[:id])
    render:show
  end

  def edit
    @artist = Artist.find(params[:id])
    render:edit
  end

  def update
    @artist = Artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path (@artist)
  end



end
