class OutfitClothesController < ApplicationController

    def create
        combo = OutfitClothe.create(combo_params)
        render json: combo
    end

    def show
        combo = OutfitClothe.find_by(:outfit_id: params[:id])
        render json: combo.to_json(to_serialized_json)
    end

    private

    def to_serialized_json
        {
            :include => {
                :clothes => {
                    :except => [:updated_at]
                },
                :outfits => {
                    :except => [:updated_at]
                }
            },
            :except => [:updated_at]
        }
    end

    def combo_params
        params.require(:outfit_clothe).permit(:outfit_id, :clothe_id)
    end

end
