class PlantsController < ApplicationController

    def index
        render json: Plant.all, exclude: [:created_at, :updated_at]
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create 
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
