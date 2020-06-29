class ProductsController < ApplicationController
    def index
        @cart = session[:cart]
        @cart ||= []
        byebug
    end
    def add
         # Get the item from the path
        @product = params[:product]
 
        # Load the cart from the session, or create a new empty cart.
        cart = session[:cart] || []
        cart << @product
 
        # Save the cart in the session.
        session[:cart] = cart
        redirect_to index_path
    end
end
