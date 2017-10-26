require 'app'
require 'spec_helper'

describe App do
  let (:app) { App.new }

  context '#total_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.total_spend('spinka_christophe@dietrich.io')).to eq '£ 13.46'
    end
  end

  context '#average_spend' do
    it 'It outputs £ symbol followed by a number' do
      expect(app.total_spend('spinka_christophe@dietrich.io')).to eq '£ 13.46'
    end
  end

  context '#most_loyal' do
    it 'It outputs the most loyal customers email or Not found"' do
      expect(app.most_loyal('terry_henry@doyle.io')).to eq '£ 13.46'
    end
  end
end
