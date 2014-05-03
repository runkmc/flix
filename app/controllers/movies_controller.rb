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
    @movie.update(movie_params)
    redirect_to @movie
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to @movie
  end

  private

  def params_id
    Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
  end

end
