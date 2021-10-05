class PenguinsController < ApplicationController
    def index
        penguins = Penguin.all.includes(:user_groups)
        render json: groups, each_serializer: GroupIndexSerializer
    end

    def show
        render json: Penguin.find(params[:id])
    end
end
