require 'rails_helper'

RSpec.describe Order, :type => :model do
    describe "Valid"do
    	it{expect(Order.new(name: "Ruby On Rails2",product_id:"1", customer_id:"1")).to be_valid}
	end
	describe "InValid"do
		it{expect(Order.new(name: "")).not_to be_valid}
		it{expect(Order.new(name: "Ruby On Rails2")).not_to be_valid}
		it{expect(Order.new(name: "Ruby On Rails2", product_id:"1", customer_id:"1", action:"ruby")).not_to be_valid}
		it{expect(Order.new(name: "Ruby On Rails2", product_id:"abc", customer_id:"xyz", action:"ruby")).not_to be_valid}

	end
end
