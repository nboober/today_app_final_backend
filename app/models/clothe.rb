class Clothe < ApplicationRecord
    belongs_to :user
    has_many :outfitClothes
    has_many :outfits, through: :outfitClothes
end
