# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all()
Outfit.destroy_all()
Clothe.destroy_all()
OutfitFavorite.destroy_all()
OutfitClothe.destroy_all()

nick = User.create(username: 'nboober', password: 'password', avatar: 'https://www.cvent-assets.com/csn-search-app-ui/assets/images/venue-card-placeholder__18v-Z.png', firstname: "Nick", lastname: "Boober")

shirt = Clothe.create(name: "blue t-shirt", location: "closet 1, drawer 1", weather_category: "any", temp_category: "any", clothes_type: "shirt", image: "https://www.joinusonline.net/pub/media/catalog/product/cache/c9a86b5d6ed7765664725105f8d84377/t/s/tshirt_polyester_round_neck_royal_blue.jpg", user_id: nick.id)
pants = Clothe.create(name: "brown pants", location: "closet 1, drawer 2", weather_category: "any", temp_category: "any", clothes_type: "pants", image: "https://www.impericon.com/media/catalog/product/l/g/lg_reell_cargoripstop_brown_pants.jpg", user_id: nick.id)
shoes = Clothe.create(name: "black shoes", location: "closet 1, floor", weather_category: "any", temp_category: "any", clothes_type: "shoes", image: "https://scene7.zumiez.com/is/image/zumiez/pdp_hero/adidas-Xplorer-Core-Black-Shoes--_287999.jpg", user_id: nick.id)
hat = Clothe.create(name: "fun hat", location: "hook by the front door", weather_category: "any", temp_category: "any", clothes_type: "hat", image: "https://www.happygabby.com/wp-content/uploads/2014/11/rainbow-sock-monkey-knit-hat.jpg", user_id: nick.id)
belt = Clothe.create(name: "black belt", location: "closet 1, drawer 3", weather_category: "any", temp_category: "any", clothes_type: "belt", image: "https://images-na.ssl-images-amazon.com/images/I/71xnIXoB7YL._UX679_.jpg", user_id: nick.id)
jewelry = Clothe.create(name: "watch", location: "top of main dresser", weather_category: "any", temp_category: "any", clothes_type: "jewelry", image: "https://www.hamiltonwatch.com/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/H/8/H82315331_4.png", user_id: nick.id)

