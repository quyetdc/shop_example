class Order < ActiveRecord::Base
	belongs_to:customer
	belongs_to:product
	validates :name, presence: true, format: {
		with: /\A[a-zA-Z][\s\w]+\z/,
			message: "Start is letters"
	}
	validates :product_id, :customer_id, numericality: { only_integer: true}
	validates :action, allow_blank: true, numericality: {only_integer:true}
end
