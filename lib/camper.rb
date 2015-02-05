class Camper<ActiveRecord::Base
  has_many(:needs)
  belongs_to(:trip)
  has_many :equipment, :through => :needs


end
