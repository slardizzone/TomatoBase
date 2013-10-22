class Movie < ActiveRecord::Base
  has_many :reviewed_movies
  has_many :users, through: :reviewed_movies
end