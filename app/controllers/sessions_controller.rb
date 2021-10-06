class SessionsController < ApplicationController
  # post '/login'
  def create
    customer = Customer.find_by(params[:username])
    if customer&.authenticate(params[:password])
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
  #       user = User.find_by(username: params[:username])
  #       session[:user_id] = user.id
  #       render json: user, status: :created
  # end