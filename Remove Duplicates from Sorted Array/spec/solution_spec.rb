require_relative '../solution'
require 'rspec'

describe "#remove_duplicates" do
  it "returns 4 for [1,3,3,3,2,5,5,5]" do
    nums = [1,3,3,3,2,5,5,5]
    expect(remove_duplicates(nums)).to eq(4)
  end

  it "returns 1 for [1,1,2]" do
    nums = [1,1,2]
    expect(remove_duplicates(nums)).to eq(1)
  end

  it "returns 12 for [1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]" do
    nums = [1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]
    expect(remove_duplicates(nums)).to eq(12)
  end

  it "returns 0 for [1,2,3,4]" do
    nums = [1,2,3,4]
    expect(remove_duplicates(nums)).to eq(0)
  end

  it "returns 1 for [1,1,2,3,4]" do
    nums = [1,1,2,3,4]
    expect(remove_duplicates(nums)).to eq(1)
  end

  it "returns 3 for [1,1,2,2,3,9,9]" do
    nums = [1,1,2,2,3,9,9]
    expect(remove_duplicates(nums)).to eq(3)
  end
end
