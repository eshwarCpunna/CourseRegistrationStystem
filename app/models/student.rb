class Student < ApplicationRecord
   
    has_many :requests
    has_many :electives, through: :requests
    belongs_to :department

    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, :presence => {:message => "PLEASE ENTER EMAIL ID."}
    validates :email, format: { with: VALID_EMAIL_REGEX, :message => "NOT A VALID EMAIL"}
    validates :email, uniqueness: { :message => "EMAIL ALREADY EXIST, PLEASE TYPE OTHER EMAIL."}
    validates  :sname,
     length: { 
    minimum: 4,
    maximum: 30,
    too_short: "THE STUDENT NAME MUST HAVE AT LEAST %{count} CHARACTERS.",
    too_long: "THE STUDENT NAME MUST HAVE NO MORE THAN %{count} CHARACTERS."
  },
   presence: {:message => "PLEASE ENTER STUDENT NAME."}

    validates :j_year, presence: {:message => "PLEASE SELECT JOINING YEAR."}
    validates :smobile, :numericality => {:message => "MOBILE NAME SHOULD OF NUMERIC TYPE."}
    validates :smobile, presence: { :message => "PLEASE ENTER MOBILE NUMBER."}
    validates :smobile, length: { minimum:10,maximum: 10 , :message => "MOBILE NUMBER SHOULD CONTAIN ONLY 10 NUMBERS."}
    has_secure_password
    VALID_PASSWORD_REGEX =/^[A-Za-z0-9]+$/
    validates :password_digest, presence: true 
    validates :password_digest,length: { 
    minimum: 6,
    too_short: "THE PASSWORD MUST HAVE AT LEAST %{count} CHARACTERS.",
   
  }
    validates :department_id, presence: {:message => "PLEASE SELECT DEPARTMENT."}
    validates :semester_id , presence: { :message => "PLEASE SELECT SEMESTER."}
end

