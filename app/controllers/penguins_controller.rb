class PenguinsController < ApplicationController
    #  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        penguins = Penguin.all
        render json: penguins
    end

    def show
        render json: Penguin.find(params[:id])
    end

    private

  def penguin_params
    params.permit(:name, :origin, :price, :bio, :shelter, :image_url)
  end

    # def show
    #     penguins = Penguin.find(params[:id])
    #     render json: penguins
    # end

    # def render_not_found_response
    #     render json: { error: "Penguin not found" }, status: :not_found
    # end

    # def render_unprocessable_entity_response(exception)
    #     render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    # end
end
