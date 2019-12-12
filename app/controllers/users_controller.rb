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

    private

    def user_params
        params.require(:user).permit(:username, :password, :firstname, :lastname, :avatar)
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
