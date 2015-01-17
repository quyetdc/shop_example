class CartpagesController < ApplicationController
	before_action :set_product, only: [:order]
	before_action :set_common_variables
	before_action :update_cart

	def order
		
	end
	def new
		@order = Order.new
	end
	def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

	private
	def set_common_variables
      @categories = Category.all
      @products = Product.all
      @popular = Product.popular
      @new_arrivals = Product.new_arrivals
      @best_sellers = Product.best_sellers
    end
    def update_cart
   	end
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      	params.require(:product).permit(:name, :price, :images, :introduce, :popular, :new_arrivals, :best_sellers, :category_id)
    end
    def order_params
    	params.require(:order).permit(:name, :product_id, :customer_id, :action)
    end
end
