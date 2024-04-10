class Secondeary < ApplicationRecord
	has_one_attached :image
	def name
		"#{first_name} #{last_name}"
	end
	validates :image,presence: true
	validates :first_name, presence: true
	validates :dob, presence: true
	validates :email,presence:true,uniqueness: true
	validates :number,presence:true
	validates :add,presence:true
end
