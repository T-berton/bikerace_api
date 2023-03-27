class Rider < ApplicationRecord
    has_one :location
    has_many :submissions 
end
