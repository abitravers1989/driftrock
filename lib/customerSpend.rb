# Class responsible for getting email of customer from user
#and returning the spend of this customer.
class CustomerSpend
  attr_accessor :user_email

  def initialize(email)
    @user_email = email
  end

  def total_spend
    "£10.99"
  end
  #
  # def average_spend; end
end
