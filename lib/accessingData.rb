# This class responsible for accessing the user and purchase data

class AccessingData
  require 'httparty'

  attr_accessor :output

  def initialize
    @output = []
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
    empty = []

    empty.push(data_hashes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo})

    #
    # empty = []
    #  data_hashes.each do | hashes |
    #    hash_with_symbol_key = hashes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
    #   #  p hash_with_symbol_key
    #    empty.push(hash_with_symbol_key)
    #   # @output < hashes
    # end
    p empty
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
# p data.output
