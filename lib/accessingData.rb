#This class responsible for accessing the user and purchase data

class AccessingData

require 'httparty'

  def user_url
    url = "https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=1000"
    response = HTTParty.get(url)
    output = response.parsed_response
  end

  def purchase_url
    url = "https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=1000"
    response = HTTParty.get(url)
    output = response.parsed_response
    #output is all the data in a hash
    # puts output
  end

end

# data = AccessingData.new
# data.purchase_url
