class User < ApplicationRecord
    has_secure_password
    has_many :outfits
    has_many :clothes
    has_many :outfitFavorites
    
    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true
    validates :password, presence: true
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :avatar, presence: true

end
