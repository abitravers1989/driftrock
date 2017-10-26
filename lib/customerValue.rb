#Class will calculate the highest valuing customer. It will output an email to the user.
require_relative 'accessingData.rb'

class CustomerValue

  def initialize(purchase_data, user_data)
    @purchase_data = purchase_data
    @user_data = user_data
  end

end
