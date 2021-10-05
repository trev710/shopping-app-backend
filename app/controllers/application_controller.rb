class ApplicationController < ActionController::API
  include ActionController::Cookies

    def current_user
      @current_user ||= session[:customer_id] && User.find_by_id(session[:customer_id])
    end

end
