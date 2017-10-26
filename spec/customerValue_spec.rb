require 'accessingData'
require 'customerValue'
require 'spec_helper'

describe CustomerSpend do
  let (:customer) { CustomerValue.new(data)

  #data.purchase_url double
  purchase_url = {"data":
    [{"user_id":"S27G-8UMJ-LDSL-UOPN","item":"Synergistic Aluminum Shoes","spend":"27.78"},
      {"user_id":"S27G-8UMJ-LDSL-UOPN","item":"Gorgeous Paper Hat","spend":"54.5"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Aerodynamic Copper Bench","spend":"3.21"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Heavy Duty Bronze Bottle","spend":"75.23"},
      {"user_id":"9PLH-PC2J-7620-L6ZP","item":"Sleek Steel Plate","spend":"50.92"},
      {"user_id":"KZHR-1H35-2IH8-JXYN","item":"Gorgeous Marble Lamp","spend":"91.65"}
    ]}

  #data.user_url double
   user_data = {"data":
     [{"id":"KZHR-1H35-2IH8-JXYN","first_name":"Quincy","last_name":"Schimmel","phone":"186.301.6921 x948","email":"schimmel_quincy@ernser.io"},
    {"id":"S27G-8UMJ-LDSL-UOPN","first_name":"Henry","last_name":"Terry","phone":"636-387-6074 x690","email":"terry_henry@doyle.io"}
    ]}
  }

    context '#most_loyal' do
      it 'Finds the ID which occurs the most' do
        expect(customer.most_loyal_id).to eq 'KZHR-1H35-2IH8-JXYN'
      end

      it 'Finds the email which is related to this ID' do
        expect(customer.most_loyal).to eq 'schimmel_quincy@ernser.io'
      end

  end

end
