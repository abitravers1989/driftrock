require 'accessingData'
require 'spec_helper'

describe AccessingData do
  let (:user_data) { AccessingData.new }

  context '#user_url' do
    it 'It returns a hash of user data which includes hashes with ID key' do
      expect(user_data.user_url).to be_instance_of Hash
    end
  end

  context '#purchase_url' do
    it 'It returns a hash of user data which includes hashes with ID key' do
      expect(user_data.purchase_url).to be_instance_of Hash
  end
end

end
