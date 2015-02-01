class Achievements::Unlock < ActiveRecord::Base
  belongs_to :achievement
  belongs_to :player
end
