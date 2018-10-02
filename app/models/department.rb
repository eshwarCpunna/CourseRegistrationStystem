class Department < ApplicationRecord
	#self.primary_key = :depid
	has_many :students
	has_many :electives
	has_many :semesters, through: :contains
	has_many :contains
end
