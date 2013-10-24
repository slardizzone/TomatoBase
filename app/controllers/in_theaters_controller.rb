class InTheatersController < ApplicationController
Rotten.api_key = "3nnje2rtqyvkxnapqeyz9wc3"

def index
    @movie = RottenList.find(:type => 'in_theaters')
  end
end

