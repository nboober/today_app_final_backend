class AuthController < ApplicationController

    def create
        user = User.find_by({username: params[:username]}).authenticate(params[:password])

        if user
            payload = {user_id: user.id}
            render json: {
                message: "Login Successful",
                user: user,
                token: encode(payload)
            }, status: :accepted
        else
            render json: {
                message: "Login Failed"
            }, status: :unauthorized
        end
    end

end