class Achievements::Badge < ActiveRecord::Base
  belongs_to :achievements_unlock
  belongs_to :player
end
