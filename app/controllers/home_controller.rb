class HomeController < ApplicationController
before_action :authenticate_user!, only: [:dashboard]




    def index

      @categories = Category.all
      @products = Product.all

	end
    
    def dashboard


    end

 

end
