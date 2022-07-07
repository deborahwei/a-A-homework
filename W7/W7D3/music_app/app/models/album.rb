class Album < ApplicationRecord

    validates :live, inclusion: { in: [true, false] }
    validates :title, uniqueness: { scope: :band_id }

    belongs_to :bank
    has_many :tracks, dependent: :destroy 
end
