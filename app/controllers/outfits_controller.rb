class OutfitsController < ApplicationController
    def create
        outfit = Outfit.create(outfit_params)
        render json: outfit
    end

    private
    def outfit_params
        params.require(:outfit).permit(:user_id)
    end

end
