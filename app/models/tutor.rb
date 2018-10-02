class Tutor < ApplicationRecord
    has_many :electives
    belongs_to :department
   

    has_secure_password
    validates :password_digest, presence: {:message => "Please enter a valid password."}
    validates :password_digest,
    length: { 
    minimum: 6,
    too_short: "THE PASSWORD  MUST HAVE AT LEAST %{count} CHARACTERS."
  }
end