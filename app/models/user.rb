class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true

  has_and_belongs_to_many :movies

  has_secure_password
end