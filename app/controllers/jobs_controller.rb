class JobsController < ApplicationController
    def index
        @jobs = Job.all
        render json: @jobs
    end

    def create
        @job = Job.create(job_params)
        render json: @job
    end

    private

    def job_params
        params.permit(:title, :location, :salary, :description, :company_id)
    end
end
