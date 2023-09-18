require_relative '../solution'
require 'rspec'

RSpec.describe 'count_substrings' do
  it 'returns 3 when given "abc"' do
    expect(count_substrings('abc')).to eq(3)
  end

  it 'returns 6 when given "aaa"' do
    expect(count_substrings('aaa')).to eq(6)
  end

  it 'returns 1 when given "a"' do
    expect(count_substrings('a')).to eq(1)
  end

  it 'returns 0 when given ""' do
    expect(count_substrings('')).to eq(0)
  end

  it 'returns 9 when given "ababa"' do
    expect(count_substrings('ababa')).to eq(9)
  end
end
