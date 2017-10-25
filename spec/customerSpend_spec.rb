require 'customerSpend'
require 'spec_helper'

# NEED TO COME BACK TO DOUBLING
# allow...

describe CustomerSpend do
  let (:customer) { CustomerSpend.new('koelpin_keanu@shanahan.info') }

  context '#initialize' do
    it 'Is initialized with an undefined user id' do
      expect(customer.user_id).to eq 'Not defined'
    end

    it 'Is passed an email as an argument' do
      expect(customer.user_email).to eq 'koelpin_keanu@shanahan.info'
    end
  end

  context '#find_user_id' do
    it 'Outputs the user ID from a given user email' do
      customer.find_user_id
      expect(customer.user_id).to_not eq 'Not defined'
      expect(customer.user_id).to eq 'RDUH-M0HV-7FCH-L7YY'
    end
  end
end
