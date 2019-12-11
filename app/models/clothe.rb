class Clothe < ApplicationRecord
    belongs_to :user
    has_many :outfit_clothes
    has_many :outfits, through: :outfit_clothes
end
