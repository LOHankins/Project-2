class Event_Activity < ActiveRecord::Base
	belongs_to :event
	validates :title, :description, presence: true
end
