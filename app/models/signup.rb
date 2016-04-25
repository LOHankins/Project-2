class Signup < ActiveRecord::Base
	belongs_to :contact, :event
end
