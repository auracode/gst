class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.datetime :invoice_date
      t.string :billing_name
      t.text :billing_address
      t.integer :billing_state_code
      t.string :billing_gst
      t.string :shipping_name
      t.text :shipping_address
      t.integer :shipping_state_code
      t.string :shipping_gst
      t.text :description
      t.integer :quantity
      t.float :rate

      t.timestamps
    end
  end
end
