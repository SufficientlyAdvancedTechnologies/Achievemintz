class Achievement < ActiveRecord::Base
  belongs_to :app
  belongs_to :created_by
end
