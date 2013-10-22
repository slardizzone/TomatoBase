class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true

  has_many :reviewed_movies
  has_many :movies, through: :reviewed_movies

  has_secure_password
end