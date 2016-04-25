class EventActivity < ActiveRecord::Base
	belongs_to :event 
	validates :title, :description, :start_time, :end_time, presence: true
end
