class ProductsController < ApplicationController

    before_action :load_cart

    def index
    end

    def add
        @cart << new_product
        render :index
    end

    private

    def load_cart
        @cart = cart
    end

    def new_product
        params.permit(:product)[:product]
    end

end