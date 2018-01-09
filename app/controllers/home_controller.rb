class HomeController < ApplicationController
before_action :authenticate_user!, only: [:dashboard]




    def index

      @categories = Category.limit(10);
      @products = Product.all

	end
    
    def dashboard


    end

    def products
      @products = Product.all;
    end

 

end
