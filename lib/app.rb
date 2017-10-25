# controller class which the user interacts with through irb
require_relative 'customerSpend'

class App
  def total_spend(email)
    customer = CustomerSpend.new(email, AccessingData.new)
    customer.calculating_total_spend
  end

  def average_spend(email)
    customer = CustomerSpend.new(email, AccessingData.new)
    customer.calcultaing_average_spend
  end
end

# app = App.new
# app.total_spend('spinka_christophe@dietrich.io')
