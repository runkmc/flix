class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = params_id
  end

  def edit
    @movie = params_id
  end

  def update
    @movie = params_id
    movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    @movie.update(movie_params)
    redirect_to @movie
  end

  private

  def params_id
    Movie.find(params[:id])
  end

end
