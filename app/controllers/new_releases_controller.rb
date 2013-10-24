class NewReleasesController < ApplicationController
Rotten.api_key = "3nnje2rtqyvkxnapqeyz9wc3"

def index
    @movie = RottenList.find(:type => 'new_releases')
    # binding.pry
  end
end

