class Submission < ApplicationRecord
    validates :slogan_idea, length: { maximum: 50 }, presence: true
    validates :firstname, presence: true 
    validates :lastname, presence: true 
    validates :email_address, presence: true 
end
