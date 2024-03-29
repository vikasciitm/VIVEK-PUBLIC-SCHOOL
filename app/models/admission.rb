class Admission < ApplicationRecord
	def name
		"#{first_name} #{last_name}"
	end
end
