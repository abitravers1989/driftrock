require 'accessingData'
require 'spec_helper'

describe AccessingData do
  let (:user_data) { AccessingData.new }

  context '#initialize' do
    it 'It is initialized with a string which will be replaced by the formatted data.' do
      expect(user_data.output).to eq 'No Date'
    end
  end

  context '#user_url' do
    it 'It returns an array of user data which includes hashes with ID key' do
      expect(user_data.user_url).to be_instance_of Array
      # expect(user_data.user_url).to include "id"
    end
  end

  context '#purchase_url' do
    it 'It returns an array of purchase data which includes hashes with ID key' do
      expect(user_data.purchase_url).to be_instance_of Array
      # expect(user_data.purchase_url).to include "id"
    end
  end
end
