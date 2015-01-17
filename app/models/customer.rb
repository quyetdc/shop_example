class Customer < ActiveRecord::Base
	has_many :orders
	validates :name, :address, presence: true, length: {minimum: 10}
	validates :phone, numericality: { only_integer: true}
	validates :emails, email: true, allow_blank: true
	validates :level, allow_blank: true, numericality: {only_integer: true}
end
