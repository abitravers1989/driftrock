# Class responsible for two things (so should be refactored).
# 1 calculating total customer spend from their email.
# 2. calculating average customer spend from their email.
require_relative 'accessing_data.rb'

class CustomerSpend

  def initialize(email, user_data, purchase_data)
    @user_email = email
    @user_data = user_data
    @purchase_data = purchase_data
    @user_id = 'Not defined'
    @spend_array = []
    @total_spend = 0
  end

  attr_accessor :user_email, :user_id, :total_spend

  def getting_user_data
    @accessing_data.user_url
  end

  def getting_purchase_data
    @accessing_data.purchase_url
  end

  def find_user_id
    @user_data.each do |user_hashes|
      find_user_id_2(user_hashes)
    end
  end

  def find_user_id_2(user_hashes)
    @user_id = user_hashes['id'] if user_hashes['email'] == @user_email
  end

  def calculating_total_spend
    find_user_id
    calculating_total_spend_1
    calculating_total_spend_2
  end

  def calculating_total_spend_1
    @purchase_data.each do |purchase_hashes|
      if @user_id == purchase_hashes['user_id']
        @spend_array << purchase_hashes['spend']
      end
    end
  end

  def calculating_total_spend_2
    spend = 0
    @spend_array.each do |i|
      spend += i.to_f
    end
    total_spend_output(spend)
  end

  def total_spend_output(spend_amount)
    customers_spend = spend_amount.round(2)
    @total_spend = customers_spend.to_f
  end

  def output_total_spend
    p "£ #{@total_spend}"
  end
  
  def calcultaing_average_spend
    find_user_id
    spend = 0
    count = 0
    @purchase_data.each do |purchase_hashes|
      next unless @user_id == purchase_hashes['user_id']
      spend += purchase_hashes['spend'].to_f
      count += 1
    end
    output(spend, count)
  end

  def output(spend, count)
    p "£#{(spend / count).round(2)}"
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

# customer = CustomerSpend.new('schimmel_quincy@ernser.io', user_data, purchase_data)
# puts "customer spend #{customer}"
# puts "output here?"
# s = customer.calculating_total_spend
# p s
# puts "or here?"
#   puts "customer spend #{s}"
