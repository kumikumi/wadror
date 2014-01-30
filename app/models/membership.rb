class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :beerclub
  validates_uniqueness_of :beerclub_id, :scope => [:user_id]
end
