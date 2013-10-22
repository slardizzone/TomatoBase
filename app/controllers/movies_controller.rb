class MoviesController < ApplicationController

  def create
    @movie = Movie.new(movie_params)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :img_url, :plot, :cast, :rt_score)
  end


end