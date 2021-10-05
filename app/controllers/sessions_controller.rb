class SessionsController < ApplicationController
  # post '/login'
  def create
    customer = Customer.find_by_username(params[:username])
    if customer&.authenticate(params[:password])
      session[:customer_id] = customer.id
      render json: customer, status: :ok
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

end