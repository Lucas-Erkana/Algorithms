require_relative '../solution'
require 'rspec'

describe '#is_palindrome' do
  it 'returns true for palindromic integers' do
    expect(is_palindrome(121)).to eq(true)
    expect(is_palindrome(12321)).to eq(true)
    expect(is_palindrome(0)).to eq(true)
  end

  it 'returns false for non-palindromic integers' do
    expect(is_palindrome(-121)).to eq(false)
    expect(is_palindrome(10)).to eq(false)
  end

  it 'returns true for palindromic strings' do
    expect(is_palindrome("A man, a plan, a canal: Panama!")).to eq(true)
    expect(is_palindrome("Racecar")).to eq(true)
  end

  it 'returns false for non-palindromic strings' do
    expect(is_palindrome("bread")).to eq(false)
  end
end
