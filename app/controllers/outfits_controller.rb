class OutfitsController < ApplicationController

    def index
        outfits = Outfit.all
        render json: outfits.to_json(to_serialized_json)
    end

    def create
        outfit = Outfit.create(outfit_params)
        render json: outfit.to_json(to_serialized_json)
    end

    def destroy
        outfit = Outfit.find(params[:id])
        outfit.destroy
    end

    private
    def outfit_params
        params.require(:outfit).permit(:user_id)
    end

    def to_serialized_json
        {
            :include => {
                :clothes => {
                    :except => [:updated_at]
                }
            },
            :except => [:updated_at]
        }
    end

end
