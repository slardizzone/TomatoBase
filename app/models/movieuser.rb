class MovieUser < ActiveRecord::Base
  validates :category, presence: true 
end