# Controller class which controls the flow of information and brings together functions.
require_relative 'customer_spend.rb'
require_relative 'accessing_data.rb'
require_relative 'customer_loyalty.rb'
require_relative 'customer_value.rb'

class App

  def total_spend(email)
    user_data = AccessingData.new.user_url
    purchase_data = AccessingData.new.purchase_url
    customer = CustomerSpend.new(email, user_data, purchase_data)
    customer.calculating_total_spend
    customer.output_total_spend
  end

  def average_spend(email)
    user_data = AccessingData.new.user_url
    purchase_data = AccessingData.new.purchase_url
    customer = CustomerSpend.new(email, user_data, purchase_data)
    customer.calcultaing_average_spend
  end

  def most_loyal
    customer = CustomerLoyalty.new
    purchase_data = AccessingData.new.purchase_url
    user_data = AccessingData.new.user_url
    customer.most_loyal_customer(purchase_data, user_data)
  end

  def highest_value_customer
    purchase_data = AccessingData.new.purchase_url
    user_data = AccessingData.new.user_url
    customer = CustomerValue.new(purchase_data, user_data)
    customer.highest_value
    customer.customer_email_output
  end
end

app = App.new
puts "Total spend of spinka_christophe@dietrich.io"
app.total_spend('spinka_christophe@dietrich.io')
puts "Average spend of spinka_christophe@dietrich.io"
app.average_spend('spinka_christophe@dietrich.io')
puts "Most loyal customer"
app.most_loyal
puts "Highest value customer"
app.highest_value_customer
