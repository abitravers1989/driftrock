# This class responsible for accessing the user and purchase data

class AccessingData
  require 'httparty'

  attr_accessor :output

  def initialize
    @output_1 = []
    @output = []
  end

  # both user and purchase data can be same method just passing the word purchases or users through to it as an argument!

  def user_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=999999'
    response = HTTParty.get(url)
    @output_1 = response.parsed_response
    formatting_data
  end

  def formatting_data
    @output_1['data'].each do |data_hashes|
      @output.push(data_hashes.each_with_object({}) { |(k, v), memo| memo[k.to_sym] = v; })
    end
    #  p @output
  end

  def formatting_2(data_hashes)
    empty.push(data_hashes.each_with_object({}) { |(k, v), memo| memo[k.to_sym] = v; })
  end

  def purchase_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=10099009'
    response = HTTParty.get(url)
    @output_1 = response.parsed_response
    formatting_data
  end
end

# data = AccessingData.new
# p data.user_url
# puts "output is #{data.output}"
