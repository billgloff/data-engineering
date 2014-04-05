require 'spec_helper'

describe ImportService do

	before do
		file_path = Rails.root + "spec/fixtures/example_input.tab"
		file = File.new(file_path)
		@import_service = ImportService.new(file)
	end	

	describe "parse" do
		it "should have an initial value of 0.0" do		
			@import_service.total_amount_gross.should equal(0.0)
		end

		it "should calculate the total amount value" do
			@import_service.parse
			@import_service.total_amount_gross.should equal(30.0)
		end

		it "should save entities in the db" do
			@import_service.parse
			Customer.count.should equal(3)
			Item.count.should equal(4)
			Merchant.count.should equal(3)
			Purchase.count.should equal(4)
		end
	end
  
end
