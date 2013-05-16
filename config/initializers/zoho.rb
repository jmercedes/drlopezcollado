require 'ruby_zoho'


RubyZoho.configure do |config|
  config.api_key = 'b4b6806f023a1deb9dbb257efa55ef9c'
   config.crm_modules = ['Leads']
  # config.crm_modules = ['Quotes', 'SalesOrders', 'Invoices'] # Depending on what kind of account you've got, adds to free edition modules
  # Currently only Quotes are supported
end