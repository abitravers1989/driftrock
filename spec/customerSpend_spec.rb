require 'customerSpend'
require 'spec_helper'

describe CustomerSpend do
  let (:customer_spend) { CustomerSpend.new('jack_lakin@rodriguezschuppe.io') }

  context '#initialize' do
    it 'Is initialized with an email address' do
      expect(customer_spend.user_email).to eq 'jack_lakin@rodriguezschuppe.io'
    end
  end

  context '#total_spend_calculation' do
    it 'It outputs £ symbol followed by a number' do
      expect(customer_spend.total_spend_calculation).to eq '£10.99'
    end
  end
end
