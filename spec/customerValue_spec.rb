require 'accessingData'
require 'customerValue'
require 'spec_helper'

describe CustomerSpend do
  #data.purchase_url double
  purchase_data =
    [{"user_id":"S27G-8UMJ-LDSL-UOPN","item":"Synergistic Aluminum Shoes","spend":"27.78"},
      {"user_id":"S27G-8UMJ-LDSL-UOPN","item":"Gorgeous Paper Hat","spend":"54.5"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Aerodynamic Copper Bench","spend":"3.21"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Heavy Duty Bronze Bottle","spend":"75.23"},
      {"user_id":"9PLH-PC2J-7620-L6ZP","item":"Sleek Steel Plate","spend":"50.92"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Gorgeous Marble Lamp","spend":"91.65"}
    ]


  #data.user_url double
   user_data = {"data":
     [{"id":"KZHR-1H35-2IH8-JXYN","first_name":"Quincy","last_name":"Schimmel","phone":"186.301.6921 x948","email":"schimmel_quincy@ernser.io"},
    {"id":"S27G-8UMJ-LDSL-UOPN","first_name":"Henry","last_name":"Terry","phone":"636-387-6074 x690","email":"terry_henry@doyle.io"}
    ]}


  let (:customer) { CustomerValue.new }

    context '#most_loyal' do
      it 'Finds the ID which occurs the most' do
        @user_ids = []

        purchase_data.each do |hashes|
           @user_ids << hashes[:user_id]
         end
        #items are now an array of user_ids

         @user_id_hash = Hash.new(0)

         @user_ids.each do |count|
           @user_id_hash[count] +=1
         end
        #now hash of user_id values and their frequencies

         most_frequent_user = @user_id_hash.max_by {|k, v| v}
         puts most_frequent_user[0]

      # it 'Finds the email which is related to this ID' do
      #   expect(customer.most_loyal).to eq 'schimmel_quincy@ernser.io'
      # end

  end

end

end 
