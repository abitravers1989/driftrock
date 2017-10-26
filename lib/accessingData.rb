# This class responsible for accessing the user and purchase data

class AccessingData
  require 'httparty'

  attr_accessor :output

  def initialize
    @output = 'No Date'
  end

  # THIS DOES NOT WORK!!!!!!Removing the outer un-necissary hash from the data
  def removing_hash_which_encapsulates_data
    formatted_output = @output['data']
    p formatted_output
  end

  def user_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=1000'
    response = HTTParty.get(url)
    @output = response.parsed_response
    # removing_hash_which_encapsulates_data
    # p 'user_url'
  end

  def purchase_url
    url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=1000'
    response = HTTParty.get(url)
    @output = response.parsed_response
    # removing_hash_which_encapsulates_data
    # p 'purchase_url'
  end
end

# {"id"=>"W9NQ-I87B-1XG1-55JH", "first_name"=>"Tabitha", "last_name"=>"Rippin", "phone"=>"1-816-239-8723 x14079", "email"=>"rippin.tabitha@pourosko.biz"}, {"id"=>"RDUH-M0HV-7FCH-L7YY", "first_name"=>"Keanu", "last_name"=>"Koelpin", "phone"=>"397.301.0034 x2638", "email"=>"koelpin_keanu@shanahan.info"}, {"id"=>"I6OX-U6YU-ETAQ-9VOW", "first_name"=>"Lawson", "last_name"=>"Franecki", "phone"=>"(821) 646-5686", "email"=>"lawson.franecki@bergstromzieme.biz"}, {"id"=>"4ZMY-O61Z-QMGH-RSTS", "first_name"=>"Christophe", "last_name"=>"Spinka", "phone"=>"892-457-9311 x30458", "email"=>"spinka_christophe@dietrich.io"}, {"id"=>"Y01Q-2NX0-1SPT-O8H2", "first_name"=>"Laney", "last_name"=>"Hansen", "phone"=>"(231) 713-7888 x708", "email"=>"laney_hansen@bosco.io"}]
#

#
# data = AccessingData.new
# data.user_url
# p data.output["data"][0]["id"]
