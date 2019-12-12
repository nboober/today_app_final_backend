class Clothe < ApplicationRecord
    belongs_to :user
    has_many :outfitClothes
    has_many :outfits, through: :outfitClothes

    validates :name, presence: true
    validates :location, presence: true
    validates :weather_category, presence: true
    validates :temp_category, presence: true
    validates :clothes_type, presence: true
    validates :image, presence: true
    validates :user_id, presence: true

end
