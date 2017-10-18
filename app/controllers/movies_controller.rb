class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def show
        id = params[:id] #retrieve movie ID from URI route
        @movie = Movie.where(:id => params[:id]).first
        #will render app/views/movies/show.html.haml by default
        
        
    end
    def new
        @movie = Movie.new
        #default: render 'new' template
        
    end
    
    
    # add below all other methods
    private
    
      def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
      end
end