class CampersController < ApplicationController

  def index 
    render json: Camper.all, status: :ok
  end

  def show
    set_camper 
    if @camper
      render json: @camper, serializer: FindcamperSerializer, status: :ok
    else
      render json: { error: "Camper not found" }, status: :not_found
    end
  end


private 
    def set_camper
      @camper = Camper.find(params[:id])
    end

end
