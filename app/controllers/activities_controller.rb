class ActivitiesController < ApplicationController
    def index 
        render json: Activity.all, status: :ok
    end

    def destroy
        a = Activity.find_by(id: params[:id])
        if a
            a.destroy
            head :no_content
        else
            render json: { error: "Activity not found" }, status: :not_found
        end
    end
end


