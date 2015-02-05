class Need<ActiveRecord::Base
  belongs_to(:equipment)
  belongs_to(:trip)
  belongs_to(:camper)

end
