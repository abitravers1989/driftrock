require 'accessingData'
require 'customerValue'
require 'spec_helper'

describe CustomerSpend do
  #data.purchase_url double
  purchase_data =
    [{'user_id' => 'S27G-8UMJ-LDSL-UOPN', "item" => "Synergistic Aluminum Shoes",'spend' => "27.78"},
      {'user_id' => "S27G-8UMJ-LDSL-UOPN","item"=>"Gorgeous Paper Hat",'spend' => "54.5"},
      {'user_id' => "KZHR-1H35-2IH8-JXYN","item"=>"Aerodynamic Copper Bench",'spend'=>"3.21"},
    ]


  #data.user_url double
   user_data =
     [{'id'=>"KZHR-1H35-2IH8-JXYN","first_name"=>"Quincy","last_name"=>"Schimmel","phone"=>"186.301.6921 x948",'email'=>"schimmel_quincy@ernser.io"},
    {'id'=>"S27G-8UMJ-LDSL-UOPN","first_name"=>"Henry","last_name"=>"Terry","phone"=>"636-387-6074 x690",'email'=>"terry_henry@doyle.io"}
    ]


  let (:customer) { CustomerValue.new }

    context '#most_loyal' do
      it 'Finds the ID which occurs the most' do
        customer.most_loyal_customer(user_data, purchase_data)
        expect(customer.most_frequent_user[0]).to eq "KZHR-1H35-2IH8-JXYN"
      end

      it 'Finds the email which is related to this ID' do
        customer.most_loyal_customer(user_data, purchase_data)
         expect(customer.user_email).to eq 'schimmel_quincy@ernser.io'
      end

  end
end
