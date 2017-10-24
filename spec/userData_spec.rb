require 'userData'
require 'spec_helper'

describe UserData do
  let (:user_data) { UserData.new('schimmel_quincy@ernser.io') }

  context '#initialize' do
    #  it 'Is passed a dataset from the API which represents the users' do
    #    expect(user_data.api_data).to_not be_nil
    #  end

    it 'Is initialized with an undefined user id' do
      expect(user_data.user_id).to eq 'Not defined'
    end

    it 'Is passed an email from the total_spend method' do
      expect(user_data.user_email).to_not be_nil
    end
  end

  context '#find_user_id_1' do
    it 'Outputs the user ID from a given user email' do
      user_data.find_user_id_1
      expect(user_data.user_id).to_not eq 'Not defined'
      # while providing API instead of accessing it
      expect(user_data.user_id).to eq 'KZHR-1H35-2IH8-JXYN'
    end
  end
end
