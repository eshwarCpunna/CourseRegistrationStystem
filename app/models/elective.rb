class Elective < ApplicationRecord

	has_many :requests
	has_many :students, through: :requests
	belongs_to :tutor
	belongs_to :department
end
