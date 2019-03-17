class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render :index
  end

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.new(genre_param)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end

  def edit
    @genre = Genre.find(params[:id])
    render :edit
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_param)
    redirect_to genre_path(@genre)
  end

  private

  def genre_param
  params.require(:genre).permit(:name, :bio)
  end


end
