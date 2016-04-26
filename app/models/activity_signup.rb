class ActivitySignup < ActiveRecord::Base
	belongs_to :signup
	belongs_to :event_activity
end
