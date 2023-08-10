require_relative '../solution'
require 'rspec'

describe '#max_area' do
  it 'calculates the max area for the given heights' do
    height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    result = max_area(height)
    expect(result).to eq(49)
  end

  it 'calculates the max area for a simple case' do
    height = [1, 1]
    result = max_area(height)
    expect(result).to eq(1)
  end

  it 'calculates the max area for another case' do
    height = [3, 1, 4, 5, 2, 6]
    result = max_area(height)
    expect(result).to eq(15)
  end

  it 'calculates the max area for a different configuration' do
    height = [7, 3, 2, 9, 1]
    result = max_area(height)
    expect(result).to eq(21)
  end

  it 'calculates the max area for a more complex case' do
    height = [10, 2, 8, 9, 5, 7, 6]
    result = max_area(height)
    expect(result).to eq(36)
  end
end
