# controller class which the user interacts with through irb
require_relative 'customerSpend.rb'
require_relative 'accessingData.rb'
require_relative 'customerLoyalty.rb'

class App
  def total_spend(email)
    customer = CustomerSpend.new(email, AccessingData.new)
    customer.calculating_total_spend
  end

  def average_spend(email)
    customer = CustomerSpend.new(email, AccessingData.new)
    customer.calcultaing_average_spend
  end

  def most_loyal
    customer = CustomerLoyalty.new
    purchase_data = AccessingData.new.purchase_url['data']
    user_data = AccessingData.new.user_url['data']
    customer.most_loyal_customer(purchase_data, user_data)
end
end

app = App.new
app.total_spend('spinka_christophe@dietrich.io')
app.average_spend('spinka_christophe@dietrich.io')
app.most_loyal
