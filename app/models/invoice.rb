class Invoice < ApplicationRecord

	attr_accessible :invoice_number, :invoice_date, :billing_name, :billing_address, :billing_state_code,:billing_gst,:shipping_name,:shipping_address,:shipping_state_code,:shipping_gst,:description,:quantity,:rate

	def total
		@invoice=Invoice.find(self.id)
		((@invoice.quantity)*(@invoice.rate)).round(2)
	end

	def cgst
		@invoice=Invoice.find(self.id)
		(@invoice.total*0.14).round(2)
	end
	
	def sgst
		@invoice=Invoice.find(self.id)
		(@invoice.total*0.14).round(2)
	end

	def gst
		@invoice=Invoice.find(self.id)
		(@invoice.total*0.14).round(2)
	end

	def grand_total
		@invoice=Invoice.find(self.id)
		@invoice.total + @invoice.gst
	end

end
