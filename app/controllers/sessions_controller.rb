class SessionsController < ApplicationController
  # post '/login'
  def create
    customer = Customer.find_by(params[:username])
    session[:customer_id] = customer.id
    render json: customer, status: :created
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end

  # delete '/logout'
  def destroy
    session.delete :customer_id
    head :no_content
  end
end

  #simpler version perhaps, no auth

  # def create
  #     # customer = User.find_by(username: params[:username])
  #     customer = Customer.create!(customer_params)
  #     # session[:customer_id] = customer.id
  #     render json: customer, status: :created
  # end
  # private

  #   def customer_params
  #       params.permit(:username, :password)
  #   end