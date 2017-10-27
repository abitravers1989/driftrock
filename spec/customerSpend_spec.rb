require 'customerSpend'
require 'accessingData'
require 'spec_helper'

# NEED TO COME BACK TO DOUBLING

describe CustomerSpend do

  purchase_data =
    [
      {
        'user_id' => 'S27G-8UMJ-LDSL-UOPN',
        'item' => 'Synergistic Aluminum Shoes',
        'spend' => '27.78'
      },
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Gorgeous Paper Hat',
        'spend' => '54.5'
      },
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Aerodynamic Copper Bench',
        'spend' => '3.21'
      }
    ]

  # data.user_url double
  user_data =
    [
      {
        'id' => 'KZHR-1H35-2IH8-JXYN',
        'first_name' => 'Quincy',
        'last_name' => 'Schimmel',
        'phone' => '186.301.6921 x948',
        'email' => 'schimmel_quincy@ernser.io'
      },
      {
        'id' => 'S27G-8UMJ-LDSL-UOPN',
        'first_name' => 'Henry',
        'last_name' => 'Terry',
        'phone' => '636-387-6074 x690',
        'email' => 'terry_henry@doyle.io'
      }
    ]
  let (:customer) { CustomerSpend.new('schimmel_quincy@ernser.io', user_data, purchase_data) }

  context '#initialize' do
    it 'Is initialized with an undefined user id' do
      expect(customer.user_id).to eq 'Not defined'
    end

    it 'Is passed an email as an argument' do
      expect(customer.user_email).to eq 'schimmel_quincy@ernser.io'
    end
  end

  context '#find_user_id' do
    it 'Outputs the user ID from a given user email' do
      customer.find_user_id
      expect(customer.user_id).to_not eq 'Not defined'
      expect(customer.user_id).to eq 'KZHR-1H35-2IH8-JXYN'
    end
  end

  context '#calculating_total_spend' do
    it 'Outputs the total spend of a customer' do
      expect(customer.calculating_total_spend).to include '£ 57.71'
    end
  end

  context '#calculating_average_spend' do
    it 'Outputs the total spend of a customer' do
      # expect(customer.calcultaing_average_spend).to include '£ 13.46'
      expect(customer.calcultaing_average_spend).to eq '£28.86'
    end
  end
end
