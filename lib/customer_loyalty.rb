# Class calculates the most loyal customer. Outputs this customer's email.

class CustomerLoyalty
  attr_accessor :most_frequent_user, :user_email

  def initialize
    @user_ids = []
    @user_id_hash = Hash.new(0)
    @most_frequent_user = 'Not found'
    @user_email = 'Not found'
  end

  def most_loyal_customer_id(purchase_data)
    purchase_data.each do |hashes|
      @user_ids << hashes['user_id']
    end
    most_loyal_customer_id_2
  end

  def most_loyal_customer_id_2
    @user_ids.each do |count|
      @user_id_hash[count] += 1
    end
    most_loyal_customer_id_3
  end

  def most_loyal_customer_id_3
    @most_frequent_user = @user_id_hash.max_by { |_k, v| v }
  end

  def most_loyal_customer(purchase_data, user_data)
    most_loyal_customer_id(purchase_data)
    user_data.each do |user_hashes|
      if user_hashes['id'] == @most_frequent_user[0]
        @user_email = user_hashes['email']
      end
    end
    output
  end

  def output
    p @user_email
  end
end
