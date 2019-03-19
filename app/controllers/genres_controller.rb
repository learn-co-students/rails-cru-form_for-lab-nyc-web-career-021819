class GenresController < ApplicationController

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
    render :edit
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end


end
