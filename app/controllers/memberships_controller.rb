class MembershipsController < ApplicationController

    def index
        memberships = Membership.all
        render json: memberships, status: :ok
    end

    def create
        membership = Membership.create(membership_params)
        render json: membership, status: :created
    end
    private
    def membership_params
        params.permit(:gym_id, :client_id, :charge)

    end
end
