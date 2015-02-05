class User < ActiveRecord::Base
  has_many(:trips)
  has_many :campers, :through => :trips

end
