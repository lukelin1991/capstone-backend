class CompanyusersController < ApplicationController

    def create
        @companyuser = Companyuser.create(companyuser_params)
        render json: @companyuser
    end

    def index
        @companyusers = Companyuser.all
        render json: @companyusers
    end

    def destroy
    end

    private

    def companyuser_params
        params.permit(:user_id, :company_id)
    end
end
