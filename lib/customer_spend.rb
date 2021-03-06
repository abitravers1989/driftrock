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
