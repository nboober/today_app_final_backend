class OutfitFavorite < ApplicationRecord
    belongs_to :user
    belongs_to :outfit
end
