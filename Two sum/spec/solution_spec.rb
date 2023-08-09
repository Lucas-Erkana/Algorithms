require_relative '../solution'
require 'rspec'

describe "#two_sum" do
  it "returns the indices of two numbers that add up to target" do
    nums = [2, 7, 11, 15]
    target = 9
    expect(two_sum(nums, target)).to eq([0, 1])
    
    nums = [3, 2, 4]
    target = 6
    expect(two_sum(nums, target)).to eq([1, 2])
    
    nums = [3, 3]
    target = 6
    expect(two_sum(nums, target)).to eq([0, 1])
  end
end
