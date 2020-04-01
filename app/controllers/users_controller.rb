class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def persist
        infoToSaveInBox = {user_id: @user.id}
        wristband = encode_token(infoToSaveInBox)
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @user.persist
        else
            render json: {error: @user.errors.full_messages}
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            @user.persist
        else
            render json: {error: "Nice try, incorrect username or password"}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
    
end
