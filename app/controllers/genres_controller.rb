class GenresController < ApplicationController

    def new 
        @genre = Genre.new
    end

    def create 
        @genre = Genre.new(genre_params(:name))
        @genre.save 
        redirect_to genre_path(@genre)
    end 

    def show 
        @genre = Genre.find_by_id(params[:id])
    end

    def edit 
        @genre = Genre.find_by_id(params[:id])
    end

    def update 
        @genre = Genre.find_by_id(params[:id])
        @genre.update(genre_params(:name)) 
        redirect_to genre_path(@genre)
    end
    
    private 

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end



end
