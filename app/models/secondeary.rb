class Secondeary < ApplicationRecord
	def name
		"#{first_name} #{last_name}"
	end
	validates :first_name, presence: true
	validates :dob, presence: true
	validates :email,presence:true,uniqueness: true
	validates :number,presence:true
	validates :add,presence:true
end
