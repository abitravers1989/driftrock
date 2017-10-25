require_relative 'accessingData.rb'

class CustomerSpend

  attr_accessor :accessing_data, :user_email, :user_id

  def initialize(email)
    @user_email = email
    @accessing_data = AccessingData.new
    @user_id = "Not defined"
  end

  def getting_user_data
     @accessing_data.user_url
  end

def find_user_id
   getting_user_data
   @accessing_data.output["data"].each do |user_hashes|
    find_user_id_2(user_hashes)
  end
end

def find_user_id_2(user_hashes)
    if (user_hashes["email"] == @user_email)
      @user_id = user_hashes["id"]
    end
  end


end

customer = CustomerSpend.new("koelpin_keanu@shanahan.info")
customer.find_user_id
p customer.user_id
