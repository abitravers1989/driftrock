require 'app'
require 'spec_helper'

describe App do
  let (:app) { App.new }
  #
  # context '#initialize' do
  #   it 'Is initialized with an email address' do
  #     expect(customer_spend.user_email).to eq 'jack_lakin@rodriguezschuppe.io'
  #   end
  # end

  context '#total_spend_calculation' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.total_spend('jack_lakin@rodriguezschuppe.io')).to eq '£10.99'
    end
  end
end
