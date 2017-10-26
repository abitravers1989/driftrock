#Class will calculate the highest valuing customer. It will output an email to the user.
require_relative 'accessingData.rb'

class CustomerValue

  # def initialize(purchase_data, user_data)
  #   @purchase_data = purchase_data
  #   @user_data = user_data
  # end

  def most_loyal_customer_ID(purchase_data)
    p purchase_data
    @user_ids = []

    purchase_data.each do |hashes|
       @user_ids << hashes["user_id"]
     end
    #items are now an array of user_ids

     @user_id_hash = Hash.new(0)

     @user_ids.each do |count|
       @user_id_hash[count] +=1
     end
    #now hash of user_id values and their frequencies

     most_frequent_user = @user_id_hash.max_by {|k, v| v}
     puts most_frequent_user[0]
  end


end

customer = CustomerValue.new
# purchase_data = AccessingData.new
customer.most_loyal_customer_ID(AccessingData.new.purchase_url["data"])
