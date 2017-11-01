require 'customer_value'
require 'spec_helper'

describe CustomerValue do
  purchase_data =
    [
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Synergistic Aluminum Shoes',
        'spend' => '27.78'
      },
      {
        'user_id' => 'S27G-8UMJ-LDSL-UOPN',
        'item' => 'Gorgeous Paper Hat',
        'spend' => '54.5'
      },
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Aerodynamic Copper Bench',
        'spend' => '43.21'
      },
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Aerodynamic Copper Bench',
        'spend' => '35.21'
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

  let(:customer) { CustomerValue.new(purchase_data, user_data) }

    context '#initialize' do
      it 'When initialized the highest spend global variable is zero' do
        expect(customer.highest_spend).to eq 0
      end
    end

    context '#highest_value' do
      it 'Calculates the highest spend of any customers' do
        customer.highest_value
        expect(customer.highest_spend).to eq 106.2
      end
    end

end
