class Track < ApplicationRecord

    validates :ord, presence: true 
    validates :regular, inclusion: { in: [true, false] }
    validates :title, uniqueness: { scope: :album_id }

    belongs_to :album 
end
