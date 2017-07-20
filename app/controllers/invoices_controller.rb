class InvoicesController < ApplicationController
  def index
  	@invoices= Invoice.all
  
  def new
  	@invoice = Invoice.new  	
  end

  def show
  	@invoice = Invoice.find(params[:id])
  end
  
  def edit
  	@invoice = Invoice.find(params[:id])
  end
  def update
  	@invoice = Invoice.find(params[:id])
    	@invoices.update_attributes(params[:invoice])
    	respond_with @invoice
  end
  def create
  	@invoice = Invoice.new(params[:invoice])
	@invoice.save
	redirect_to @invoice
  	
  end


end
