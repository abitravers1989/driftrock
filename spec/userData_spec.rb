require 'userData'
require 'spec_helper'

describe UserData do

  let (:user_data) { UserData.new('jack_lakin@rodriguezschuppe.io') }

 context '#initialize' do

  #  it 'Is passed a dataset from the API which represents the users' do
  #    expect(user_data.api_data).to_not be_nil
  #  end

   it 'Is passed an email from the total_spend method' do
     expect(user_data.user_email).to_not be_nil
   end

  end

end
