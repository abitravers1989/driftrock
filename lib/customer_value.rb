# Class will calculate the highest valuing customer. It will output an email to the user.
require_relative './lib/customer_spend.rb'


purchase_data =
  [
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Synergistic Aluminum Shoes',
      'spend' => '27.78'
    },
    {
      'user_id' => 'S27G-8UMJ-LDSL-UOPN',
      'item' => 'Gorgeous Paper Hat',
      'spend' => '54.5'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '43.21'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '35.21'
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

# @customer_id = "Nill"
@highest_spend = 0

user_data.each do |k|
  var = k["email"]
  puts "first #{@highest_spend}"
  customer = CustomerSpend.new(var, user_data, purchase_data)
  var_2 = customer.calculating_total_spend.to_f
  puts "second #{@highest_spend}"
  if (var_2 > @highest_spend)
    @highest_spend = var_2
   end
 end
 puts "Last hS #{@highest_spend}"

























require_relative 'customer_spend.rb'

class CustomerValue(purchase_data, user_data)

def initialize
   @purchase_data = purchase_data
   @user_data = user_data
   @customer_id = "Nill"
end

def highest_value(purchase_data)
  highest_spend = 0
    user_data.each do |k|
       var = k["email"]
       p var
       customer = CustomerSpend.new(var, user_data, purchase_data)
         if (customer.calculating_total_spend.to_f) >= (highest_spend)
           p customer
           @customer_id = var
        end
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
      'item' => 'Gorgeous Paper Hat',
      'spend' => '54.5'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '43.21'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '35.21'
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
customer.customer_id
