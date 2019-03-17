class SongsController < ApplicationController

    def index
        @songs = Song.all
        render :index
    end

    def new
        @song = Song.new
        render :new
    end

    def show 
        @song = Song.find_by(params[:id])
        @artist = @song.artist
        @genre = @song.genre

        render :show
    end

    def create
        @song = Song.create(song_params)
        redirect_to @song
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
