class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # makes this controller method available to the view 
  # can use it in products/index.html.erb 
  helper_method :cart

  def cart 
    # using Ruby's conditional assignment operator!
    session[:cart] ||= []
  end 
end
