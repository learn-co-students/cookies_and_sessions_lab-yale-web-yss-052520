class ProductsController < ApplicationController

    def index
        session[:cart]
    end

    def add
        cart << params[:product]
        session[:cart] = cart
        redirect_to '/'
    end
end
