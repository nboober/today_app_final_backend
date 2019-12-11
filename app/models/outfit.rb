class Outfit < ApplicationRecord
    belongs_to :user
    has_many :outfitClothes
    has_many :clothes, through: :outfitClothes
end
