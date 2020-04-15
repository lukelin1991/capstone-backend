class ApplicationsController < ApplicationController

    def create
        @application = Application.create(app_params)
        render json: @application
    end

    def destroy
    end

    private

    def app_params
        params.permit(:description, :user_id, :job_id)
    end
end
