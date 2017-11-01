# Class will calculate the highest valuing customer. It will output an email to the user.
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
       customer = CustomerSpend.new(var, user_data, purchase_data)
         if (customer.calculating_total_spend.to_f) >= (highest_spend)
        @customer_email = var
      end
     end
 #    email_remeber_highest = 0
 #      users = user_data.map{|user| user["email"]}
 #      users.each do |k |
 #        p k
 #        cus = CustomerSpend.new(k, user_data, purchase_data)
 #        p k
 #        if cus.calculating_total_spend.to_f > email_remeber_highest
 #           p k
 #          @cus_email = k
 #          email_remeber_highest += cus.calculating_total_spend.to_f
 #      end
 #    end
 # end
end
