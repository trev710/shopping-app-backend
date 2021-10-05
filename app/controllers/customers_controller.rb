class CustomersController < ApplicationController
  def show
    if current_user
      render json: current_user
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    customer = Customer.create(user_params)
    if customer.valid?
      session[:customer_id] = customer.id
      render json: customer, status: :created
    else
      render json: { errors: customer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
