class ProductsController < ApplicationController

    def index

    end

    def add 
        # cart << params[:product]
        # render 
        cart << params[:product]
        render :index
    end


end
  