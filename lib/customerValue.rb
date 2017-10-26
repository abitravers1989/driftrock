#Class will calculate the highest valuing customer. It will output an email to the user.
require_relative 'accessingData.rb'

class CustomerValue
  attr_accessor :user_ids

  def initialize
     @user_ids = []
     @user_id_hash = Hash.new(0)
     @most_frequent_user = "unset"
  end

  def most_loyal_customer_ID(purchase_data)
    purchase_data.each do |hashes|
       @user_ids << hashes["user_id"]
     end
     most_loyal_customer_ID_2
  end

  def most_loyal_customer_ID_2
    #items are now an array of user_ids
     @user_ids.each do |count|
       @user_id_hash[count] +=1
     end
    most_loyal_customer_ID_3
  end
    #now hash of user_id values and their frequencies

   def most_loyal_customer_ID_3
     @most_frequent_user = @user_id_hash.max_by {|k, v| v}
     puts @most_frequent_user[0]
  end


end

customer = CustomerValue.new
purchase_data = (AccessingData.new.purchase_url["data"])
customer.most_loyal_customer_ID(purchase_data)
