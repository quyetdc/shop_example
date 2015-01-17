require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe "Valid" do
  	it { expect(Product.new(name: "Ruby On Rails")).to be_valid }
  	it { expect(Product.new(name: "Ruby On Rails12", price:"46.6", category_id:"1", popular:"1", new_arrivals:"1", best_sellers:"1")).to be_valid }
  end
  describe "Invalid" do
  	it { expect(Product.new(name: "")).not_to be_valid }
  	it { expect(Product.new(name: "1ruby on rails")).not_to be_valid }
  	it { expect(Product.new(name: "Ruby")).not_to be_valid }
  	it { expect(Product.new(name: "Ruby"*50)).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", price: "rails" )).not_to be_valid }
    it { expect(Product.new(name: "Ruby On rails", category_id:"2.3")).not_to be_valid }
    it { expect(Product.new(name: "Ruby On rails", popular:"2.3")).not_to be_valid }
    it { expect(Product.new(name: "Ruby On rails", best_sellers:"2.3")).not_to be_valid }
    it { expect(Product.new(name: "Ruby On rails", new_arrivals:"2.3")).not_to be_valid }
  end
end
