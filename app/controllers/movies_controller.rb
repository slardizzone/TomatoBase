class MoviesController < ApplicationController

  def new
  end

  def create

    binding.pry

    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to user_movies_path
  end

  def index
    render :index
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :img_url, :plot, :cast, :rt_score)
  end


end