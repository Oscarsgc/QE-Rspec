class Discount 
	def initialize		
	end

	def calculate_discount(sales_amount)
		discount_price = 0.0

		if sales_amount == 0 || sales_amount < 0
			raise ArgumentError.new("Sales Amount should not be 'Zero/Negative'")
		else
			if sales_amount >= 1000 && sales_amount < 2000
				discount_price = sales_amount - (sales_amount * 0.05)
			else
				if sales_amount >= 2000 && sales_amount < 5000
					discount_price = sales_amount - (sales_amount * 0.15)
				else
					if sales_amount >= 5000 && sales_amount < 20000
						discount_price = sales_amount - (sales_amount * 0.5)
					else
						discount_price = sales_amount - 0.0
					end
				end
			end
		end
		discount_price
	end	
end