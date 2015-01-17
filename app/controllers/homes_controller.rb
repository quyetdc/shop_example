class HomesController < ApplicationController
	before_action :set_common_variables
  
	  def index
  	end
  	private
    def set_common_variables
      @products = Product.all
    	@categories = Category.all
    	@popular = Product.popular
    	@new_arrivals = Product.new_arrivals
    	@best_sellers = Product.best_sellers
    end
    
end
