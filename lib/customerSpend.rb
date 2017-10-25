require_relative 'accessingData.rb'

class CustomerSpend
  attr_accessor :accessing_data, :user_email, :user_id, :spend_array, :total_spend

  def initialize(email)
    @user_email = email
    @accessing_data = AccessingData.new
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

  def find_user_spend_2(purchase_hashes)
    purchase_hashes['spend'] if @user_id == purchase_hashes['id']
end

  def calculating_total_spend
    find_user_id
    getting_purchase_data
    calculating_total_spend_1
    calculating_total_spend_2
    total_spend_output
  end

  def calculating_total_spend_1
    @accessing_data.output['data'].each do |purchase_hashes|
      # p purchase_hashes['user_id']
      # p @user_id
      if @user_id == purchase_hashes['user_id']
        @spend_array << purchase_hashes['spend']
      end
    end
  end

  def calculating_total_spend_2
    spend = []
    @spend_array.each do |i|
      spend << i.to_f
    end
    calculating_total_spend_3(spend)
end

  def calculating_total_spend_3(spend)
    count = 0
    spend.each do |k|
      count += k
    end
    spend_formatter(count)
    end

  def spend_formatter(spend_amount)
    @total_spend = "£ #{spend_amount}"
  end

  def total_spend_output
    print @total_spend
  end

 def calcultaing_average_spend
   find_user_id
   getting_purchase_data
   calculating_total_spend_1
   p @spend_array
   p @user_id
 end

end

customer = CustomerSpend.new("spinka_christophe@dietrich.io")
customer.calcultaing_average_spend
