class Contact < ApplicationRecord
	validates :full_name,:email,:number,:message, presence: true
end
