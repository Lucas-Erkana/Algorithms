require_relative '../solution'
require 'rspec'

describe '#length_of_longest_substring' do
  it 'returns 3 for "abcabcbb"' do
    expect(length_of_longest_substring('abcabcbb')).to eq(3)
  end

  it 'returns 1 for "bbbbb"' do
    expect(length_of_longest_substring('bbbbb')).to eq(1)
  end

  it 'returns 3 for "pwwkew"' do
    expect(length_of_longest_substring('pwwkew')).to eq(3)
  end

  it 'returns 0 for ""' do
    expect(length_of_longest_substring('')).to eq(0)
  end

  it 'returns 1 for "a"' do
    expect(length_of_longest_substring('a')).to eq(1)
  end
end
