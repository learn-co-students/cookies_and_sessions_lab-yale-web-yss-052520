class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
  def cart
    
    session[:cart] ||= []
    # Set session[:cart] equals to [] if it is not defined
  end
end
