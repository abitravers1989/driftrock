# Class will calculate the highest valuing customer. It will output an email to the user.
require_relative './customer_spend.rb'
require_relative './accessing_data.rb'

class CustomerValue

  attr_accessor :highest_value

  def initialize(purchase_data, user_data)
     @purchase_data = purchase_data
     @user_data = user_data
     @highest_spend = 0
     @customer_spend = 0
  end

  def highest_value
    @user_data.each do |k|
      var = k["email"]
      # puts "first hs #{@highest_spend}"
      customer = CustomerSpend.new(var, @user_data, @purchase_data)
      puts "customer spend #{customer}"
      @customer_spend = customer.calculating_total_spend.to_f
      # puts "second hs #{@highest_spend}"
      puts "customer spend #{@customer_spend}"
      if (@customer_spend > @highest_spend)
        @highest_spend += @customer_spend
      # puts "Third hS #{@highest_spend}"
       end
    end
    puts "Last hS #{@highest_spend}"
  end

end

purchase_data =
  [
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Synergistic Aluminum Shoes',
      'spend' => '27.78'
    },
    {
      'user_id' => 'S27G-8UMJ-LDSL-UOPN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '34.21'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Gorgeous Paper Hat',
      'spend' => '54.5'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '3.21'
    }
  ]

# data.user_url double
user_data =
  [
    {
      'id' => 'KZHR-1H35-2IH8-JXYN',
      'first_name' => 'Quincy',
      'last_name' => 'Schimmel',
      'phone' => '186.301.6921 x948',
      'email' => 'schimmel_quincy@ernser.io'
    },
    {
      'id' => 'S27G-8UMJ-LDSL-UOPN',
      'first_name' => 'Henry',
      'last_name' => 'Terry',
      'phone' => '636-387-6074 x690',
      'email' => 'terry_henry@doyle.io'
    }
  ]

customer = CustomerValue.new(purchase_data, user_data)
customer.highest_value
