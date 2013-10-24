class MoviesController < ApplicationController

  def new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save

    movie_id = @movie.id || Movie.find_by(title: movie_params[:title]).id

    @reviewed_movie = ReviewedMovie.new(
      :user_id => session[:user_id], 
      :movie_id => movie_id, 
      :category => params[:movie][:category])
    
    @reviewed_movie.save

    category = params[:movie][:category].gsub( /\s/, "+" )

    redirect_to user_movies_path + "?category=#{category}"
  end

  def index
    @reviews = User.find(current_user).reviewed_movies
    @filter = params[:category]
    if @filter
      @reviews = @reviews.where(category: @filter)
    end
    render :index
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :img_url, :plot, :cast, :rt_score)
  end    
end