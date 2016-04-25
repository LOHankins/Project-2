class Event < ActiveRecord::Base
	has_many :event_activities, dependent: :destroy
	validates :title, :start_date, :end_date, presence: true
end
