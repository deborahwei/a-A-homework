class Band < ApplicationRecord
    
    validates :name, presence: true 

    has_many :albums

    has_many :album_tracks,
    dependent: :destroy, 
    through: :albums, 
    source: :tracks
end