require_relative 'accessingData.rb'

class CustomerSpend
  attr_accessor :accessing_data, :user_email, :user_id, :spend_array, :total_spend

  def initialize(email, customer_or_purchase_data)
    @user_email = email
    @accessing_data = customer_or_purchase_data
    @user_id = 'Not defined'
    @spend_array = []
    @total_spend = 'nil'
  end

  def getting_user_data
    @accessing_data.user_url
  end

  def getting_purchase_data
    @accessing_data.purchase_url
  end

  def find_user_id
    getting_user_data
    @accessing_data.output['data'].each do |user_hashes|
      find_user_id_2(user_hashes)
    end
  end

  def find_user_id_2(user_hashes)
    @user_id = user_hashes['id'] if user_hashes['email'] == @user_email
    end

  def calculating_total_spend
    find_user_id
    getting_purchase_data
    calculating_total_spend_1
    calculating_total_spend_2
  end

  def calculating_total_spend_1
    @accessing_data.output['data'].each do |purchase_hashes|
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
    p @total_spend = "£ #{spend_amount}"
  end

  def calcultaing_average_spend
    find_user_id
    getting_purchase_data
    spend = 0
    count = 0
    @accessing_data.output['data'].each do |purchase_hashes|
      if @user_id == purchase_hashes['user_id']
        # add_to_spend(purchase_hashes)
        spend += purchase_hashes['spend'].to_f
        count += 1
      end
    end
    output(spend, count)
  end

  # def add_to_spend(purchase_hashes)
  #     spend = 0
  #     spend += purchase_hashes['spend'].to_f
  # end

  def output(spend, count)
    p "£#{spend / count}"
 end
end

customer = CustomerSpend.new('spinka_christophe@dietrich.io', AccessingData.new)
customer.calculating_total_spend
customer.calcultaing_average_spend
