class ActivitySignup < ActiveRecord::Base
	belongs_to :signup, :event_activity
end
