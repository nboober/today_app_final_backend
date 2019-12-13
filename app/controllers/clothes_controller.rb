class ClothesController < ApplicationController

    def create
        clothing = Clothe.create(clothing_params)
        render json: clothing
    end

    def update
        clothing = Clothe.find(params[:id])
        clothing.update(clothing_params)
        render json: clothing
    end

    private
    def clothing_params
        params.require(:clothe).permit(:name, :location, :weather_category, :temp_category, :clothes_type, :image, :user_id)
    end

end
