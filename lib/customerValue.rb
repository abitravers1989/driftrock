#Class will calculate the highest valuing customer. It will output an email to the user.
require_relative 'accessingData.rb'

class CustomerValue
  attr_accessor :most_frequent_user, :user_email

  def initialize
     @user_ids = []
     @user_id_hash = Hash.new(0)
     @most_frequent_user = "Not found"
     @user_email = "Not found"
    #  @purchase_data = purchase_data
    #  @user_data = user_data
  end

  def most_loyal_customer_ID(purchase_data)
    p purchase_data
    purchase_data.each do |hashes|
       @user_ids << hashes['user_id']
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
    #  puts @most_frequent_user[0]
  end

  def most_loyal_customer(purchase_data, user_data)
    most_loyal_customer_ID(purchase_data)
    #  p user_data
     user_data.each do |user_hashes|
      #  p user_hashes
       if (user_hashes['id'] == @most_frequent_user[0])
        #  p user_hashes["email"]
         @user_email = user_hashes['email']
      end
    end
    output
  end

  def output
    puts @user_email
  end

end

customer = CustomerValue.new
# purchase_data = (AccessingData.new.purchase_url["data"])
# user_data = (AccessingData.new.user_url["data"])
purchase_data =
  [{'user_id' => 'S27G-8UMJ-LDSL-UOPN', "item" => "Synergistic Aluminum Shoes",'spend' => "27.78"},
    {'user_id' => "S27G-8UMJ-LDSL-UOPN","item"=>"Gorgeous Paper Hat",'spend' => "54.5"},
    {'user_id' => "KZHR-1H35-2IH8-JXYN","item"=>"Aerodynamic Copper Bench",'spend'=>"3.21"},
  ]

#data.user_url double
 user_data =
   [{'id'=>"KZHR-1H35-2IH8-JXYN","first_name"=>"Quincy","last_name"=>"Schimmel","phone"=>"186.301.6921 x948",'email'=>"schimmel_quincy@ernser.io"},
  {'id'=>"S27G-8UMJ-LDSL-UOPN","first_name"=>"Henry","last_name"=>"Terry","phone"=>"636-387-6074 x690",'email'=>"terry_henry@doyle.io"}
  ]
customer.most_loyal_customer(purchase_data, user_data)
