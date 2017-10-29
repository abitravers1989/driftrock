require 'accessingData'
require 'spec_helper'

describe AccessingData do
  let (:user_data) { AccessingData.new }

  context '#initialize' do
    it 'It is initialized with a string which will be replaced by the formatted data.' do
      expect(user_data.output).to eq []
    end
  end

  context '#user_url' do
    it 'It returns an array of user data which includes hashes with ID key' do
      user_data.user_url
      # expect(user_data.user_url).to eq 'user_url'
      expect(user_data.output).to be_instance_of Array
      expect(user_data.output[0]).to include :id
    end
  end

  context '#purchase_url' do
    it 'It returns an array of purchase data which includes hashes with ID key' do
      user_data.purchase_url
      # expect(user_data.purchase_url).to eq 'purchase_url'
      expect(user_data.output).to be_instance_of Array
    end
  end
end
