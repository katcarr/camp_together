class Trip<ActiveRecord::Base
  belongs_to(:user)
  has_many(:needs)
  has_many(:campers)
  has_many :equipments, :through => :needs

end
