class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
    end 

    def add 
        product = params[:product] 
        cart << product 
        redirect_to "/" 
    end 

end 