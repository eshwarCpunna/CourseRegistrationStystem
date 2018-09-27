class Tutor < ApplicationRecord
	has_many :electives
	belongs_to :department
	has_secure_password
	validates :password_digest, presence: true , length: { minimum: 6 }
end
