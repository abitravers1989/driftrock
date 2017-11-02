require 'app'
require 'spec_helper'

describe App do

  purchase_data =
    [
      {
        'user_id' => 'KZHR-1H35-2IH8-JXYN',
        'item' => 'Synergistic Aluminum Shoes',
        'spend' => '27.78'
      },
      {
        'user_id' => 'S27G-8UMJ-LDSL-UOPN',
        'item' => 'Aerodynamic Copper Bench',
        'spend' => '34.21'
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

  let(:app) { App.new(user_data, purchase_data) }

  context '#total_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.total_spend('schimmel_quincy@ernser.io')).to eq "£ 85.49"
    end
  end

  context '#average_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.average_spend('schimmel_quincy@ernser.io')).to eq "£28.5"
    end

    # it 'If the customer has spent nothing then it throws an error message' do
    #   expect(app.average_spend('spinka_christophe@dietrich.io')).to eq "Customer not made a purchase"
    # end

  end

  context '#most_loyal' do
    it 'It outputs the most loyal customers email or Not found"' do
      expect(app.most_loyal).to eq "schimmel_quincy@ernser.io"
    end
  end

  context '#highest_value_customer' do
    it 'It outputs the highest value customer who has spent the most' do
      expect(app.highest_value_customer).to eq "schimmel_quincy@ernser.io"
    end
  end
end
