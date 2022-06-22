class Person < ApplicationRecord 
    validates :name, presence: true 
    validates :house_id, presence: true, uniqueness: true 
end