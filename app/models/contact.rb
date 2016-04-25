class Contact < ActiveRecord::Base
	has_many :signups
	validates :first_name, :last_name, :email, presence: true
end
