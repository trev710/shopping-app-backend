class PenguinsController < ApplicationController
     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        penguin = Penguin.all
        render json: penguin        #, each_serializer: PenguinSerializer
    end

    def show
        penguin = Penguin.find(params[:id])
        render json: penguin
    end

    def render_not_found_response
        render json: { error: "Penguin not found" }, status: :not_found
    end

    # def render_unprocessable_entity_response(exception)
    #     render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    # end
end
