class SearchController < ApplicationController
Rotten.api_key = "3nnje2rtqyvkxnapqeyz9wc3"

def index
  if params[:title]
    @movies = RottenMovie.find(title: params[:title],  limit: 15, :expand_results => true)
  end
  render :index
end

end
