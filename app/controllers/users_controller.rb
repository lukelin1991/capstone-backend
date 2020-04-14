class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def create
        @user = User.create(user_params)
        if @user.valid?
            persisted_params
        else
            render json: {error: @user.errors.full_messages}
        end
    end

    def persist
        persisted_params
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
           persisted_params
        else
            render json: {error: "Nice try, incorrect username or password"}
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    def destroy
        @user = User.find_by(id: params[:id])
        render json: @user
        @user.destroy
    end

    private

    def persisted_params
        infoToSaveInBox = {user_id: @user.id}
        wristband = encode_token(infoToSaveInBox)
        render json: {user: UserSerializer.new(@user), token: wristband}
    end


    def user_params
        params.permit(:username, :email, :password)
    end
    
end
