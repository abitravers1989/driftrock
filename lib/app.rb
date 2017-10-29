# controller class which the user interacts with through irb
require_relative 'customerSpend.rb'
require_relative 'accessingData.rb'
require_relative 'customerLoyalty.rb'

class App
  def total_spend(email)
    user_data = AccessingData.new.user_url
    purchase_data = AccessingData.new.purchase_url
    customer = CustomerSpend.new(email, user_data, purchase_data)
    customer.calculating_total_spend
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
end

# app = App.new
# puts "Total spend"
# app.total_spend('spinka_christophe@dietrich.io')
# puts "Average"
# app.average_spend('spinka_christophe@dietrich.io')
# puts "most loyal"
# app.most_loyal
