class ReviewedMovie < ActiveRecord::Base
  validates :category, presence: true

  belongs_to :movie
  belongs_to :user
end