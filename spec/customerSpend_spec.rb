require 'customerSpend'

describe CustomerSpend do
  let (:customer_spend) { CustomerSpend.new('jack_lakin@rodriguezschuppe.io') }

  context '#initialize' do
    it 'Is initialized with an email address' do
      expect(customer_spend.user_email).to eq 'jack_lakin@rodriguezschuppe.io'
    end
  end
end
