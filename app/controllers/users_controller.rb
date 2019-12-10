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
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :firstname, :lastname, :avatar)
    end

end
