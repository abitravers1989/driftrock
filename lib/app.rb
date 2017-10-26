# controller class which the user interacts with through irb
require_relative 'customerSpend.rb'
require_relative 'accessingData.rb'
require_relative  'customerValue.rb'

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
    customer = CustomerValue.new
    # purchase_data = (AccessingData.new.purchase_url["data"])
    # user_data = (AccessingData.new.user_url["data"])
    purchase_data =
    [
  {
    'id' => '12DF-2324-GA2D-31RT',
    'first_name' => 'Drift',
    'last_name' => 'Rock',
    'phone' => '0-000-000-0000',
    'email' => 'drift.rock@email.com'
  },
  {
    'id' => '1111-1111-1111-1111',
    'first_name' => 'Example',
    'last_name' => 'Exampleson',
    'phone' => '0-000-000-0000',
    'email' => 'example@email.com'
  }
]
    #data.user_url double
     user_data = [
   {
     'user_id' => '12DF-2324-GA2D-31RT',
     'item' => 'Some purchaseable item',
     'spend' => '19.99'
   },
   {
     'user_id' => '1111-1111-1111-1111',
     'item' => 'Some purchaseable item',
     'spend' => '19.99'
   },
   {
     'user_id' => '12DF-2324-GA2D-31RT',
     'item' => 'Another item',
     'spend' => '10.00'
   }
 ]
    customer.most_loyal_customer(purchase_data, user_data)
    puts customer.user_email
  end

end

app = App.new
app.total_spend('spinka_christophe@dietrich.io')
app.average_spend('spinka_christophe@dietrich.io')
app.most_loyal
