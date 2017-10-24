require './lib/customerSpend'
require './lib/user_data'

def total_spend
  customer_spend = CustomerSpend.new('jack_lakin@rodriguezschuppe.io')
  customer_spend.user_email

  user_data = UserData.new(aPI_data, customer_spend.user_email)
end
