class Student < ApplicationRecord
	
	has_many :requests
	has_many :electives, through: :requests
	belongs_to :department

	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 21 }, format: { with: VALID_EMAIL_REGEX },uniqueness: true
	validates :sname, presence: true , length: { minimum:4,maximum: 15 }
	validates :j_year, presence: true
	validates :smobile, :numericality => true, presence: true , length: { minimum:10,maximum: 10 }
	has_secure_password
	VALID_PASSWORD_REGEX =/^[A-Za-z0-9]+$/
	validates :password_digest, presence: true , length: { minimum: 6 }
	validates :department_id, presence: true
	validates :semester_id , presence: true
end
