class Product < ActiveRecord::Base
	belongs_to :category
	has_many :orders
	validates :name,
		presence: true, # khong duoc de trong
		length: {
			minimum: 6,
			maximum: 50,
			too_short: "must have at least %{count} words",
			too_long: "must have at most %{count} words"
		}, # do dai tu 6-50
		format: {
			with: /\A[a-zA-Z][\s\D\d]+\z/,
			message: "Start is letters"
		} # bat dau bang chu cai
	validates :popular, :new_arrivals, :best_sellers, :category_id,
		allow_blank: true,
		numericality: { only_integer: true}
	validates :price,
		allow_blank: true,
		numericality: true
	scope :popular, -> { where(popular: 1) }	
	scope :new_arrivals, ->{where(new_arrivals: 1)}
	scope :best_sellers, ->{where(best_sellers: 1)}
end
