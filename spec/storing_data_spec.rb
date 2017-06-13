require 'spec_helper'
require 'storing_data'

describe DataStore do

  subject(:store) { described_class.new }
  let(:key) { double :key }
  let(:value) { double :value }

  it 'initializes with an empty hash attribute' do
    expect(store.get_data(key)).to be_nil
  end

end
