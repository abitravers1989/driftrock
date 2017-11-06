# Controller class which controls the flow of information and brings together functions.
require_relative 'customer_spend.rb'
require_relative 'accessing_data.rb'
require_relative 'customer_loyalty.rb'
require_relative 'customer_value.rb'
require_relative 'most_sold.rb'

class Controller

  def initialize(user_data, purchase_data)
    @user_data = user_data
    @purchase_data = purchase_data
  end

  def total_spend(email)
    customer = CustomerSpend.new(email, @user_data, @purchase_data)
    customer.calculating_total_spend
    customer.output_total_spend
  end

  def average_spend(email)
    customer = CustomerSpend.new(email, @user_data, @purchase_data)
    customer.calcultaing_average_spend
  end

  def most_loyal
    customer = CustomerLoyalty.new
    customer.most_loyal_customer(@purchase_data, @user_data)
  end

  def highest_value_customer
    customer = CustomerValue.new(@purchase_data, @user_data)
    customer.highest_value
    customer.customer_email_output
  end

  def most_sold_item
    sold = MostSold.new(@purchase_data, @user_data)
    sold.total_item_revenue
    sold.output_most_sold_item
  end
end

# user_data = AccessingData.new.user_url
# purchase_data = AccessingData.new.purchase_url
# app = Controller.new(user_data, purchase_data)
# puts "Total spend of spinka_christophe@dietrich.io"
# app.total_spend('spinka_christophe@dietrich.io')
# puts "Average spend of spinka_christophe@dietrich.io"
# app.average_spend('spinka_christophe@dietrich.io')
# puts "Most loyal customer"
# app.most_loyal
# puts "Highest value customer"
# app.highest_value_customer
# puts "Most sold item"
# app.most_sold_item
