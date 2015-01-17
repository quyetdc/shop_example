class ListsController < ApplicationController
	before_action :set_category, only: [:show]
  before_action :set_common_variables
	  def index
  	end
  	def show
  	end
  	private
    def set_common_variables
      @categories = Category.all
      @products = Product.all
      @popular = Product.popular
      @new_arrivals = Product.new_arrivals
      @best_sellers = Product.best_sellers
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
      @cateproduct = Product.where(category_id: @category.id) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :introduce)
    end
end
