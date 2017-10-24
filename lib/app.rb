# Class responsible for getting email of customer from user
# and returning the spend of this customer.

require 'userData'
# could be app.rb / controller class
class App
  # attr_accessor :user_email
  #
  # def initialize(email)
  #   @user_email = email
  # end

  # This should be moved onto app.rb
  def total_spend(_email)
    # user_data = UserData.new(email)
    # user_data.find_user_id_1
    '£10.99'
  end
  #
  # def average_spend; end
end
