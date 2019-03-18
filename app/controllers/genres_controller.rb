class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render:index
  end

  def new
    @genre = Genre.new
    render:new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
    render:show
  end

  def edit
    @genre = Genre.find(params[:id])
    render:edit

  end

  def update
    @genre = Genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end


end
