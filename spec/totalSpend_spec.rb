require 'totalSpend'

describe TotalSpend do
  let (:total_spend) { TotalSpend.new("jack_lakin@rodriguezschuppe.io")}

  context '#initialize' do
    it 'Is initialized with an email address' do
       expect(total_spend.user_email).to eq "jack_lakin@rodriguezschuppe.io"
    end
  end
end
