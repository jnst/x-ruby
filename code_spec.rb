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

RSpec.describe '#string_to_integer' do
  it 'should convert to valid integer' do
    expect(Code.string_to_integer('+123')).to eq(123)
    expect(Code.string_to_integer('+123+')).to eq(123)
    expect(Code.string_to_integer('+123-')).to eq(123)
    expect(Code.string_to_integer('    +123   ')).to eq(123)
    expect(Code.string_to_integer('-42')).to eq(-42)
  end
end

RSpec.describe '#is_number' do
  it 'should valid number' do
    expect(Code.is_number('0')).to eq true
    expect(Code.is_number(' 0.1 ')).to eq true
    expect(Code.is_number('abc')).to eq false
    expect(Code.is_number('1 a')).to eq false
    expect(Code.is_number('2e10')).to eq true
    expect(Code.is_number(' -90e3   ')).to eq true
    expect(Code.is_number(' 1e')).to eq false
    expect(Code.is_number('e3')).to eq false
    expect(Code.is_number(' 6e-1')).to eq true
    expect(Code.is_number(' 99e2.5')).to eq false
    expect(Code.is_number('53.5e93')).to eq true
    expect(Code.is_number(' --6 ')).to eq false
    expect(Code.is_number('-+3')).to eq false
    expect(Code.is_number('95a54e53')).to eq false
    expect(Code.is_number(' ')).to eq false
    expect(Code.is_number('.1')).to eq true
    expect(Code.is_number('.0e')).to eq false
    expect(Code.is_number('.9')).to eq false
  end
end
