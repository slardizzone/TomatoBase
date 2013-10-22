class SearchController < ApplicationController
Rotten.api_key = "3nnje2rtqyvkxnapqeyz9wc3"

def index
  if params[:title] && params[:limit]
    @movie = RottenMovie.find(title: params[:title],  limit: params[:limit].to_i, :expand_results => true)
    # binding.pry
  end
  render :index
end

end
