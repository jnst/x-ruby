require 'rspec'
require_relative 'code'

RSpec.describe '#two_sum' do
  it 'should return indices' do
    result = Code.two_sum([1, 2, 3, 4, 5], 4)
    expect(result).to eq [0, 2]
  end
end

RSpec.describe '#reverse_integer' do
  it 'should return reversed positive number' do
    expect(Code.reverse_integer(123)).to eq 321
  end

  it 'should return reversed negative number' do
    expect(Code.reverse_integer(-123)).to eq(-321)
  end

  it 'should return reversed number with ignored zero' do
    n = Code.reverse_integer(120)
    expect(n).to eq 21
  end

  it 'should be zero when (n < -2^32) or (2^32-1 < n)' do
    min = -8_463_847_412
    max = 7_463_847_412
    expect(Code.reverse_integer(min - 1)).to eq 0
    expect(Code.reverse_integer(max + 1)).to eq 0
  end
end
