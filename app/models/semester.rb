class Semester < ApplicationRecord
	#self.primary_key = :semid
	has_many :students
	has_many :departments, through: :contains
	has_many :contains
end
