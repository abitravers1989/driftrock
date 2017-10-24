# Class responsible for getting email of customer from user
# and returning the spend of this customer.


#could be app.rb / controller class
class CustomerSpend
  attr_accessor :user_email

  def initialize(email)
    @user_email = email
  end

  # This should be moved onto app.rb
  def total_spend_calculation
    '£10.99'
  end
  #
  # def average_spend; end
end
