require 'app'
require 'spec_helper'

describe App do
  let(:app) { App.new }

  context '#total_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.total_spend('spinka_christophe@dietrich.io')).to eq '£ 325.83'
    end
  end

  context '#average_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.average_spend('spinka_christophe@dietrich.io')).to eq '£36.2'
    end
  end

  context '#most_loyal' do
    it 'It outputs the most loyal customers email or Not found"' do
      expect(app.most_loyal).to eq 'bogisich_judah@hilperttromp.biz'
    end
  end

  context '#highest_value_customer' do
    it 'It outputs the highest value customer who has spent the most' do
      expect(app.highest_value_customer).to eq 'bogisich_judah@hilperttromp.biz'
    end
  end
end
