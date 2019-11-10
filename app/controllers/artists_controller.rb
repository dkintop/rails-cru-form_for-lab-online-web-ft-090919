class ArtistsController < ApplicationController

    def show 

    end

    def new 
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save 
        redirect_to artist_path(@artist)
    end

    def show
        @artist = @artist = Artist.find_by_id(params[:id])
    end

    def edit 
        @artist = Artist.find_by_id(params[:id])
    end

    def update 
        @artist = Artist.find_by_id(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end


private 

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

end
