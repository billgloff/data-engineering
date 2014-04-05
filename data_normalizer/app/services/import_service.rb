require 'csv'

class ImportService

	attr_accessor :total_amount_gross

	def initialize(file)
		@file = file
		@total_amount_gross = 0.0
	end

	def parse
		CSV.parse(@file, headers: true, col_sep: "\t").each do |row|
          customer_name, item_description, item_price = row[0], row[1], row[2].to_f
          purchase_count, merchant_address, merchant_name = row[3].to_i, row[4], row[5]
          
          merchant = Merchant.find_or_create_by(name: merchant_name, address: merchant_address)
          customer = Customer.find_or_create_by(name: customer_name)
          item = Item.find_or_create_by(description: item_description, price: item_price, count: purchase_count, merchant: merchant)
          Purchase.find_or_create_by(customer: customer, item: item)

          @total_amount_gross += item_price.to_f
      	end
	end

end