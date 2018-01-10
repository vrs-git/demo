class HomeController < ApplicationController
before_action :authenticate_user!, only: [:dashboard]




    def index

      @categories = Category.limit(8);
      @cat_ran_three = Category.order('RANDOM()').limit(3);
      @cat_ran_two = Category.order('RANDOM()').limit(2);

      @products = Product.limit(5);


	end
    
    def dashboard


    end

    def products
      @products = Product.all;
    end

 

end
