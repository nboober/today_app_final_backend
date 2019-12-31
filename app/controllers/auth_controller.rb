class AuthController < ApplicationController

    def create
        user = User.find_by({username: params[:username]}).authenticate(params[:password])

        if user
            payload = {user_id: user.id}
            render json: {
                message: "Login Successful",
                user: JSON.parse(user.to_json(to_serialized_json)),
                token: encode(payload)
            }, status: :accepted
        else
            # byebug
            render json: {
                message: "Login Failed"
            }, status: :unauthorized
        end
    end

    private
    def to_serialized_json
        {
            :include => {
                :clothes => {
                    :except => [:updated_at]
                },
                :outfits => {
                    :include => {
                        :clothes => {
                            :except => [:updated_at]
                        }
                    },
                    :except => [:updated_at]
                }
            },
            :except => [:updated_at]
        }
    end

end