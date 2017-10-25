# This class responsible for accessing the user and purchase data

class AccessingData
  require 'httparty'

  attr_accessor :output

  def initialize
    @output= 'No Date'
  end

  #THIS DOES NOT WORK!!!!!!Removing the outer un-necissary hash from the data
  def removing_hash_which_encapsulates_data
    formatted_output = @output["data"]
    p formatted_output
  end

  def user_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=1000'
    response = HTTParty.get(url)
    @output = response.parsed_response
    removing_hash_which_encapsulates_data
  end

  def purchase_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=1000'
    response = HTTParty.get(url)
    @output = response.parsed_response
    removing_hash_which_encapsulates_data
  end
end
#
# data = AccessingData.new
# data.user_url
# p data.output["data"][0]["id"]
