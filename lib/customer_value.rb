# Class will calculate the highest valuing customer. It will output an email to the user.
require_relative './customer_spend.rb'
require_relative './accessing_data.rb'

class CustomerValue

  attr_accessor :highest_spend, :highest_value_cus_email

  def initialize(purchase_data, user_data)
    @purchase_data = purchase_data
    @user_data = user_data
    @highest_spend = 0
    @customer_spend = 0
    @highest_value_cus_email = "nill"
  end

  def highest_value
    @user_data.each do |user|
      user_emails = user["email"]
      calculate_customer_spend(user_emails)
      if (@customer_spend.to_f > @highest_spend)
        @highest_spend += @customer_spend
        @highest_value_cus_email = user_emails
      end
    end
  end

  def calculate_customer_spend(user_emails)
    customer = CustomerSpend.new(user_emails, @user_data, @purchase_data)
    @customer_spend = customer.calculating_total_spend
  end

  def customer_email_output
    p @highest_value_cus_email
  end

end
