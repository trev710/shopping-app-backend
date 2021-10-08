class CustomersController < ApplicationController
  def index
    customers = Customer.all 
    render json: customers
  end
  
  def show
    customer = Customer.find_by(id: session[:customer_id])
    if user
      render json: customer
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  def create
    customer = Customer.create(customer_params)
    if customer.valid?
      session[:customer_id] = customer.id
      render json: customer, status: :created
    else
      render json: { errors: customer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def customer_params
    params.permit(:username, :password)
  end
end
