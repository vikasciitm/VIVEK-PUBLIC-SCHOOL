class Admission < ApplicationRecord
	has_one_attached :image
	def name
		"#{first_name} #{last_name}"
	end
	validates :first_name, :last_name,presence: true
	before_validation :first_name
end
