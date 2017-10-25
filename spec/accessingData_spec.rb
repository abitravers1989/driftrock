require 'accessingData'
require 'spec_helper'

describe AccessingData do
  let (:user_data) { AccessingData.new }

  context '#initialize' do
    it 'It is initialized with a string which will be replaced by the formatted data.' do
      expect(user_data.output_formatted).to eq 'No Date'
    end
  end

  context '#user_url' do
    it 'It returns a hash of user data which includes hashes with ID key' do
      expect(user_data.user_url).to be_instance_of Hash
    end
  end

  context '#purchase_url' do
    it 'It returns a hash of purchase data which includes hashes with ID key' do
      expect(user_data.purchase_url).to be_instance_of Hash
    end
  end
end
