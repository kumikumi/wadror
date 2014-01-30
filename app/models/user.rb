class User < ActiveRecord::Base
  include RatingAverage
  validates :username, uniqueness: true, length: { minimum: 3, maximum: 15 }
  validates :password, format: { with: /.*(?=.{4,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*/, message: "Password must be at least 4 characters long, and must have one upper case letter, a lower case letter, and a number" }
  
  
  
  has_many :ratings, :dependent => :destroy   # käyttäjällä on monta ratingia
  has_many :beers, through: :ratings
  has_many :memberships, :dependent => :destroy
  has_many :beerclubs, through: :memberships
  has_secure_password

end
