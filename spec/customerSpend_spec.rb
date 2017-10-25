require 'customerSpend'
require 'spec_helper'

# NEED TO COME BACK TO DOUBLING
# allow...

describe CustomerSpend do
  let (:customer) { CustomerSpend.new('spinka_christophe@dietrich.io') }

  context '#initialize' do
    it 'Is initialized with an undefined user id' do
      expect(customer.user_id).to eq 'Not defined'
    end

    it 'Is passed an email as an argument' do
      expect(customer.user_email).to eq 'spinka_christophe@dietrich.io'
    end
  end

  context '#find_user_id' do
    it 'Outputs the user ID from a given user email' do
      customer.find_user_id
      expect(customer.user_id).to_not eq 'Not defined'
      expect(customer.user_id).to eq '4ZMY-O61Z-QMGH-RSTS'
    end
  end

  context '#calculating_total_spend' do
    it 'Outputs the total spend of a customer' do
      puts 'calculating...'
      p customer.calculating_total_spend
      puts 'calculated'
      p customer.total_spend
      # expect(customer.calculating_total_spend).to output('£ 13.46').to_stdout
    end
  end
end
