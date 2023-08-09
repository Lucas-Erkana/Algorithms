require_relative '../solution'
require 'rspec'

describe "#is_match" do
  it "returns true for matching pattern and string" do
    s = "aab"
    p = "c*a*b"
    expect(is_match(s, p)).to eq(true)
  end

  it "returns false for non-matching pattern and string" do
    s = "mississippi"
    p = "mis*is*p*."
    expect(is_match(s, p)).to eq(false)
  end

  it "returns true for empty pattern and string" do
    s = ""
    p = ""
    expect(is_match(s, p)).to eq(true)
  end

  it "returns false for non-matching pattern and non-empty string" do
    s = "hello"
    p = "world"
    expect(is_match(s, p)).to eq(false)
  end
end
