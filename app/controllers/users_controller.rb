class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def show
        token = request.headers["Authorization"]
        payload = decode(token)
        user = User.find(payload["user_id"])
        render json: user.to_json(to_serialized_json)
    end

    def update
        token = request.headers["Authorization"]
        user = User.find(params[:id])
        user.update(user_params)
        render json: user.to_json(to_serialized_json)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :firstname, :lastname, :avatar)
    end

    def to_serialized_json
        {
            :include => {
                :clothes => {
                    :except => [:updated_at]
                },
                :outfits => {
                    :except => [:updated_at]
                },
                :outfitFavorites => {
                    :except => [:updated_at]
                }
            },
            :except => [:updated_at]
        }
    end

end
