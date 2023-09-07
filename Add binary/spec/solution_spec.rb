require_relative '../solution'
require 'rspec'

RSpec.describe 'add_binary' do
  it 'returns "100" when given "11" and "1"' do
    expect(add_binary('11', '1')).to eq('100')
  end

  it 'returns "10101" when given "1010" and "1011"' do
    expect(add_binary('1010', '1011')).to eq('10101')
  end

  it 'returns "110001" when given "11010" and "10111"' do
    expect(add_binary('11010', '10111')).to eq('110001')
  end

  it 'returns "110001" when given "11010" and "10111"' do
    expect(add_binary('11010', '10111')).to eq('110001')
  end

end

