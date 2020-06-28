class ProductsController < ApplicationController 
    def index 
    end 

    def add 
        cart << product_params 
        redirect_to "/"

    end
    
    def product_params 
        params.require(:product)
    end 
end 