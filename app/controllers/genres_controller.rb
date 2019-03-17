class GenresController < ApplicationController
    def index
        @genres = Genre.all
        render :index
    end

    def new
        @genre = Genre.new
        render :new
    end

    def show
        @genre = Genre.find_by(params[:id])
        render :show
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to @genre
    end

    def edit
        @genre = Genre.find_by(params[:id])
        render :edit
    end

    def update
        @genre = Genre.update(genre_params)
        redirect_to @genre
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end
