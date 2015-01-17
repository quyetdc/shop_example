require 'rails_helper'

RSpec.describe Customer, :type => :model do
   describe "Valid" do
  		it { expect(Customer.new(name: "Ruby on Rails", address: "Cau Giay-Ha Noi", phone: "0973884222")).to be_valid }
  		it { expect(Customer.new(name: "Ruby on Rails", address: "Cau Giay-Ha Noi", phone: "0973884222", emails:"tiantran92@gmail.com")).to be_valid }
   end
   describe "InValid" do
   		it { expect(Customer.new(name: "")).not_to be_valid }
   		it { expect(Customer.new(name: "Ruby on Rails", address: "Cau Giay-Ha Noi", phone: "0974884222", emails:"tiantran92")).not_to be_valid }
   		it { expect(Customer.new(name: "Ruby on Rails", address: "Cau Giay-Ha Noi", phone: "")).not_to be_valid }
   		it { expect(Customer.new(name: "Ruby on Rails", address: "Cau Giay-Ha Noi", phone: "0974884222", level:"tiantran")).not_to be_valid }
   end
end
