require 'rspec'
require_relative 'code'

RSpec.describe '#two_sum' do
  it 'should return indices' do
    result = Code.two_sum([1, 2, 3, 4, 5], 4)
    expect(result).to eq [0, 2]
  end
end
