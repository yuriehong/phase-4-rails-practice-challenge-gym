class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
        gyms = Gym.all
        render json: gyms, status: :ok

    end
    def show
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    end

    def destroy
        Gym.find(params[:id]).destroy
        render json: {}, status: :ok

    end

    def update
        gym = Gym.find(params[:id])
        gym.update(gym_params)
        render json: gym, status: :ok

    end

    private

    def gym_params
        params.permit[:name, :address]
    end

    def record_not_found(error)
        render json: {"error": "Gym not found"}, status: :not_found

    end
end
