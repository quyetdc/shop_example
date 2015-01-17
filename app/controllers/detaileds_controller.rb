class DetailedsController < ApplicationController
	before_action :set_product, only: [:show]
	def index
    	@products = Product.all
    	@categories = Category.all
  	end
  	def show
  		@categories = Category.all
  		@products = Product.all
  	end
  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :images, :introduce, :popular, :new_arrivals, :best_sellers, :category_id)
    end
end
