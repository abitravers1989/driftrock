# This class responsible for accessing the user and purchase data

class AccessingData
  require 'httparty'

  attr_accessor :output

  def initialize
    @output = 'No Data'
  end

# both user and purchase data can be same method just passing the word purchases or users through to it as an argument!

  def user_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=10'
    response = HTTParty.get(url)
    @output = response.parsed_response
    formatting_data
    # break if (response.parsed_response['data'] == nil)
    # end
  end

  def formatting_data
     @output['data'].each do | data_hashes |
       formatting_2(data_hashes)
     end
  end

  def formatting_2(data_hashes)
     data_hashes.each do |k, v |
      #  p k, v
       @output = k.to_sym

     end
    # data_hashes.map {|k, v| k.to_sym, v}
    #    @output = data_hashes[data_hashes.map{|(k,v)| [k.to_sym, v]}]

  end

  def purchase_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=9000'
    response = HTTParty.get(url)
    @output = response.parsed_response
    # removing_hash_which_encapsulates_data
    # p 'purchase_url'
  end
end


data = AccessingData.new
data.user_url
p data.output
